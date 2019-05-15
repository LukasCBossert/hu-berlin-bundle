# HUBerlin
## Documents and Documentations for HUBerlin bundle

This bundle provides following files:

  * `HUBerlin-bundle.dtx` which is the core file designed with literate programming
  * `HUBerlin-bundle.pdf` is documentation of the bundle.
  * `HUBerlin-letter.cls` is the documentclass for letters
  * `README.md`
  * `makefile`

Furthermore there are a couple of folders.
 * `examples`
 * `img`
 * `cls`

This work has the LPPL maintenance status _maintained_.
The current maintainer of this work is [Lukas C. Bossert](https://github.com/lukascbossert).
With this bundle you have several documents which are according to the coporate design of the Humboldt-Universität zu Berlin.

Following documents or documentclasses are available:

* letter (`HUBerlin-letter.cls`)

## Installation of the bundle
`HUBerlin` is part of the distributions [MiKTeX](http://www.miktex.org)
and [TeXLive](http://www.tug.org/texlive) -- thus, you
can easily install it using the respective package manager.
If you would like to
install `HUBerlin-bundle` into your local folder  manually, do the following:
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

This bundle is constantly updated. For hints, errors or suggestions use the GitHub repository [https://github.com/LukasCBossert/HUBerlin-bundle](https://github.com/LukasCBossert/HUBerlin-bundle).

## Changelog

All notable changes to this project will be documented in the [README.md](https://github.com/LukasCBossert/HUBerlin-bundle/blob/master/README.md).
This project **does not** adhere to [Semantic Versioning](http://semver.org/).
The markdown syntax is inspired by the conventions proposed by [keepachangelog.com](http://keepachangelog.com/).
