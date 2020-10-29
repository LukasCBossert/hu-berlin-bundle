hu-berlin-bundle
================

This package provides files according to the corporate design
for the Humboldt-Universität zu Berlin.
It is _no_ official package of the university itself and
not officially approved by it.

You find more information in the official [corporate design guideline](https://www.hu-berlin.de/de/hu-intern/design/basiselemente/leitfaden-corporate-design-hu.pdf)
and on the website <https://www.hu-berlin.de/de/hu-intern/design>.

## Documents and Documentations for hu-berlin bundle

This bundle provides following files:

  * `hu-berlin-bundle.dtx` which is the core file designed with literate programming
  * `hu-berlin-bundle.ins` which is the installation file for all necessary files generated automatically
  * `hu-berlin-bundle.pdf` is documentation of the bundle.
  * `README.md`
  * `makefile`

All other files can and will be generated from the `.dtx` file (see below).

Furthermore there is the folder `img` which contains the necessary image files.

This work has the LPPL maintenance status _maintained_.
The current maintainer of this work is [Lukas C. Bossert](https://github.com/lukascbossert).

You find this bundle versioned and available on [Zenodo](https://doi.org/10.5281/zenodo.3251728)


With this (unofficial) bundle you have several documents which are designed according to the corporate design of the Humboldt-Universität zu Berlin.

Following documents or documentclasses are available:

* letter (`hu-berlin-letter.cls`); via `.tex` and `.md`
* base package (`hu-berlin-base.sty`)

## Installation of the bundle
`hu-berlin` is part of the distributions [MiKTeX](http://www.miktex.org)
and [TeXLive](http://www.tug.org/texlive) -- thus, you
can easily install it using the respective package manager.
If you would like to
install `hu-berlin-bundle` into your local folder  manually, do the following:
Go to your terminal, browse to the folder of this bundle and run

```
make install
```

If you are using macOS you might be asked for your user account password for the installation.

Further options of this makefile are:

* `clean`:  deletes all unnecessary files
* `cleanbundle`:  deletes all files except `.dtx`, `.md`. You will get the plain version of this bundle.
This might be helpful if you send the bundle to someone else.
* `ctan`:  this will create a zip file which can be used to send to CTAN.
* `files`: will only create the files from the `.dtx`-scratch.
* `uninstall`: will erase the locally installed files.

This bundle is constantly updated. For hints, errors or suggestions use the GitHub repository [https://github.com/LukasCBossert/hu-berlin-bundle](https://github.com/LukasCBossert/hu-berlin-bundle).

## Changelog

All notable changes to this project will be documented in the [README.md](https://github.com/LukasCBossert/hu-berlin-bundle/blob/master/README.md).
This project **does not** adhere to [Semantic Versioning](http://semver.org/).
The markdown syntax is inspired by the conventions proposed by [keepachangelog.com](http://keepachangelog.com/).

### v1.0.8 (2020/10/30)
* (letter) replacing actual logo with a dummy text (due to possible copyright conflicts).
  The correct logo has to be called `hu-berlin-logo.pdf`
  and needs to be put somewhere in PATH so it will be found.
  If such file cannot be found a dummy text will be taken instead (`Humboldt-Universität zu Berlin´)

### v1.0.7 (2020/10/29)
* (letter) fixed missing `\removereffields`
* (letter) added missing suffix for hu-logo (`.pdf`)

### v1.0.6 (2020-10-22)
* (letter) changed address separator
* (letter) fixed empty minipage when no metadata given
* (letter) changed default backaddress

### v1.0.5 (2020-04-28)
* (general) Changed logo format to `.pdf`
* (letter) Changed `\ifkomavarempty` to `\ifkomavarempty`, fixes
  [github-issue nr. 1](https://github.com/LukasCBossert/hu-berlin-bundle/issues/1)

### v1.0.4 (2019-12-19)
* Added `hu-berlin-base.sty` as a package which contains all relevant code for documents and documentclasses of the bundle.

### v1.0.3 (2019-06-26)
 * Changed the main font for compatibility with UNIX-systems (TeX Gyre Heros instead of Verdana).

### v1.0.2 (2019-06-22)
 Renaming files for CTAN compatability.

### v1.0.1 (2019-06-21)
 Internal changes for publishing. Still one documentclass for a letter.

### v1.0.0 (2019-06-21)
 First release with a documentclass for letter.

## Copyright
Various parts of this bundle have different copyrights.
If not otherwise stated the copyright is [The LaTeX project public license (LPPL), version 1.3c](https://www.latex-project.org/lppl/lppl-1-3c/)

### Boilerplate / markdown-template
The template for the markdown conversion,
forked from the pandoc-templates and [JensErat pandoc-scrlttr2](https://github.com/JensErat/pandoc-scrlttr2) is dual-licensed,
under both the GPL (v2 or higher, same as pandoc) and the BSD 3-clause license (included below).

----

Copyright (c) 2014, John MacFarlane\\
Copyright (c) 2014, Jens Erat\\
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

*  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

* Neither the name of John MacFarlane nor the names of other contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
