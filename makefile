PROJECT:=hu-berlin-bundle
SHELL = bash
MAKE  = make
CTANBIB = $(PROJECT)-ctan.bib
PKG   =  $(shell cat $(PROJECT).pkglist)
CTAN  = ctanbib $$pkg >> $(CTANBIB) && echo "... $$pkg"
# install
LOCAL = $(shell kpsewhich --var-value TEXMFLOCAL)
# zip
PWD   = $(shell pwd)
TEMP := $(shell mktemp -d -t tmp.XXXXXXXXXX)
TDIR  = $(TEMP)/$(PROJECT)
VERS  = $(shell /bin/date "+%Y-%m-%d---%H-%M-%S")
DATE  = $(shell /bin/date "+%Y-%m-%d")
# Colors
RED   = \033[0;31m
CYAN  = \033[0;36m
NC    = \033[0m
echoPROJECT = @echo -e "$(CYAN) <$(PROJECT)>$(RED)"



.PHONY: test

all: doc



examples: files
	$(MAKE) letter
	$(MAKE) md2pdf-letter

md2pdf-letter:
	pandoc --pdf-engine=lualatex --template hu-berlin-letter-template.latex -o hu-berlin-letter-example-markdown.pdf hu-berlin-letter-example-markdown.md

letter: files
	latexmk -lualatex -gg -interaction=nonstopmode hu-berlin-letter-example-lualatex.tex

# How to get information from CTAN
CTAN: $(PROJECT).pkglist
	@for pkg in $(PKG);\
	do                \
	$(CTAN);          \
	done

# before we retrieve infos from CTAN
# we clean and sort the list with packages
getCTAN: $(PROJECT).pkglist
	$(echoPROJECT) "$(RED)Retrieving$(NC) information from CTAN."
	$(echoPROJECT) "Fetching information from CTAN about package...$(NC)"	
	@-rm $(CTANBIB)
	$(shell sort -u $(PROJECT).pkglist > $(TEMP)/pkg1.lst)
	mv $(TEMP)/pkg1.lst $(PROJECT).pkglist
	$(MAKE) CTAN

$(PROJECT).pkglist:
	lualatex $(PROJECT).dtx

files: $(PROJECT).ins
	lualatex $(PROJECT).ins
	$(echoPROJECT) "* source files created * $(NC)"

$(PROJECT).ins:
	lualatex $(PROJECT).dtx

doc: files
	$(MAKE) $(PROJECT).pdf
	# $(MAKE) install
	$(MAKE) examples
	latexmk -lualatex -f --shell-escape  $(PROJECT).dtx
	$(echoPROJECT) "* $(PROJECT).pdf created * $(NC)"
	@exit 0

$(PROJECT).pdf: getCTAN files
	$(echoPROJECT) "* creating $(PROJECT).pdf * $(NC)"
	latexmk -lualatex -f --shell-escape  $(PROJECT).dtx
	$(echoPROJECT) "* $(PROJECT).pdf created * $(NC)"

# clean all temporary files
clean:
	rm -f $(PROJECT).{sectionbibs.aux,fls,pkglist,thm,bibexample,biographies.aux,xdv,aux,mw,bbl,bcf,blg,doc,fdb_latexmk,fls,glo,gls,hd,idx,ilg,ind,listing,log,nav,out,run.xml,snm,synctex.gz,toc,vrb}
	rm -f $(PROJECT).markdown.{in,lua,out}
	rm -f *.{log,aux,latexmk}
	rm -rf _markdown_*
	$(echoPROJECT) "* cleaned temp files * $(NC)"

ctan: $(PROJECT).dtx
	$(echoPROJECT) "* start zipping files * $(NC)"
	@-mkdir archive
	@rm -f archive/$(PROJECT)-$(DATE)*.zip
	@mkdir $(TDIR)
	@cp $(PROJECT).{dtx,pdf} README.md makefile $(TDIR)
	-@rm -f img/.DS_Store
	@cp -R img $(TDIR)
	@cd $(TEMP); \
   zip -Drq $(PWD)/archive/$(PROJECT)-$(VERS).zip $(PROJECT)
	$(echoPROJECT) "* files zipped * $(NC)"


# clean all files
cleanbundle: clean
	rm -f *.{{b,c,d,l}bx,ins,pdf,zip,bib,sty,cls}
	rm -f hu-berlin-letter*.{tex,md,lco,latex}
	$(echoPROJECT) "* cleaned all files * $(NC)"

# This will check whether there is the folder
# .pandoc in the main directory
pandoc-files:
ifneq ("$(wildcard ~/.pandoc/templates/)","")
	$(echoPROJECT) "* pandoc/templates/ exists. * $(NC)"
else
	$(echoPROJECT) "* pandoc/templates/ missing, creating it. * $(NC)"
	mkdir ~/.pandoc
	mkdir ~/.pandoc/templates
endif
	cp  hu-berlin-*-template.* ~/.pandoc/templates/



install: uninstall files
	@mkdir -p $(LOCAL)/{tex,source,doc}/latex/$(PROJECT)
	@cp $(PROJECT).{dtx,ins} $(LOCAL)/source/latex/$(PROJECT)
	@cp hu-berlin-*.{cls,sty} $(LOCAL)/tex/latex/$(PROJECT)
	@cp img/* $(LOCAL)/tex/latex/$(PROJECT)
	@cp $(PROJECT).pdf $(LOCAL)/doc/latex/$(PROJECT)
	mktexlsr
	$(MAKE) pandoc-files
	$(echoPROJECT) "* all files installed * $(NC)"


uninstall:
	@rm -rf $(LOCAL)/{tex,source,doc}/latex/$(PROJECT)
	@rm -rf $(LOCAL)/{tex/latex,bibtex/bib}/$(PROJECT)
	$(echoPROJECT) "* all files uninstalled * $(NC)"
