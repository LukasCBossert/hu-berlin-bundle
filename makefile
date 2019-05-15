PROJECT:=HUBerlin-bundle
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

letter:
	# cd examples && 
	latexmk -lualatex HUBerlin-letter.tex


# How to get information from CTAN
getCTAN: $(CTANBIB)
ifneq ("$(wildcard $(CTANBIB))","")
	$(echoPROJECT) "$(RED)Skipping$(NC) retrieving information from CTAN."
	$(echoPROJECT) "Using existing $(CTANBIB).$(NC)"	
else
	$(echoPROJECT) "$(RED)Retrieving$(NC) information from CTAN."
	$(echoPROJECT) "Fetching information from CTAN about package...$(NC)"	
	@for pkg in $(PKG);\
	do                \
	$(CTAN);          \
	done
endif

$(CTANBIB): $(PROJECT).pdf
	lualatex $(PROJECT).dtx
	# @rm -f $(PROJECT).pdf

files: $(PROJECT).ins
	latex $(PROJECT).ins
	$(echoPROJECT) "* source files created * $(NC)"

$(PROJECT).ins:
	latex $(PROJECT).dtx

doc: 
	$(MAKE) $(PROJECT).pdf
	# $(MAKE) install
	$(MAKE) examples
	latexmk -lualatex -f --shell-escape  $(PROJECT).dtx
	$(echoPROJECT) "* $(PROJECT).pdf created * $(NC)"
	@exit 0

$(PROJECT).pdf: getCTAN files
	$(echoPROJECT) "* creating $(PROJECT).pdf * $(NC)"
	latexmk -lualatex -f --shell-escape  $(PROJECT).dtx
	open $(PROJECT).pdf
	$(echoPROJECT) "* $(PROJECT).pdf created * $(NC)"

# clean all temporary files
clean:
	rm -f $(PROJECT).{sectionbibs.aux,fls,pkglist,thm,bibexample,biographies.aux,xdv,aux,mw,bbl,bcf,blg,doc,fdb_latexmk,fls,glo,gls,hd,idx,ilg,ind,listing,log,nav,out,run.xml,snm,synctex.gz,toc,vrb}
	rm -f $(PROJECT).markdown.{in,lua,out}
	rm -f *.{log,aux,latexmk}
	rm -rf _markdown_*
	$(echoPROJECT) "* cleaned temp files * $(NC)"

ctan:
	$(echoPROJECT) "* start zipping files * $(NC)"
	@-mkdir archive
	@rm -f archive/$(PROJECT)-$(DATE)*.zip
	@mkdir $(TDIR)
	@cp $(PROJECT).{dtx,pdf} README.md makefile $(TDIR)
	@cd $(TEMP); \
   zip -Drq $(PWD)/archive/$(PROJECT)-$(VERS).zip $(PROJECT)
	$(echoPROJECT) "* files zipped * $(NC)"


# clean all files
cleanbundle: clean
	rm -f *.{{b,c,d,l}bx,ins,pdf,zip,bib,sty,cls}
	rm -f examples/*
	rm -f cls/*
	$(echoPROJECT) "* cleaned all files * $(NC)"


install: uninstall
	@mkdir -p $(LOCAL)/{tex,source,doc}/latex/$(PROJECT)
	@cp $(PROJECT).{dtx,ins} $(LOCAL)/source/latex/$(PROJECT)
	@cp cls/HUBerlin-letter.cls $(LOCAL)/tex/latex/$(PROJECT)
	@cp img/* $(LOCAL)/tex/latex/$(PROJECT)
	@cp $(PROJECT).pdf $(LOCAL)/doc/latex/$(PROJECT)
	mktexlsr
	$(echoPROJECT) "* all files installed * $(NC)"


uninstall:
	@rm -rf $(LOCAL)/{tex,source,doc}/latex/$(PROJECT)
	@rm -rf $(LOCAL)/{tex/latex,bibtex/bib}/$(PROJECT)
	$(echoPROJECT) "* all files uninstalled * $(NC)"
