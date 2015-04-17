# This repo helps you install mod_tora on Ubuntu 14.04, 64 bit.

Notes:

* The pre-compiled binaries of Neko and Tora are installed (Latest Git versions, as of 2015-04-17, compiled with latest Haxe on Ubuntu 14.04 64bit)
* You can recompile with `./recompileNeko.sh` and `./recompileTora.sh` respectively.
* You can install neko with `./installNeko.sh`.
* You can install tora, and set it to run on startup, with `./installTora.sh`
* You can install `mod_neko` and `mod_tora` for apache, and configure it to use `mod_tora`, using `installModTora.sh`.
* You will need to restart apache after you're done.

Installing on a server:

* Clone this repository.
* Run `/installModTora.sh`

Compiling new versions:

* If you wish to compile new versions, clone this repo with `git clone --recursive ...`, so the submodules are loaded.
* Run `./recompileNeko.sh` and `./recompileTora.sh` to compile neko and tora.
* Commit the changes to `bin/`, and re-run the install scripts on your server.

TODO:

* Add scripts to help setup nginx with tora -fcgi as well.
