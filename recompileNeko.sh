#!/bin/sh

cd neko
make
cd -
cp -R neko/bin/* bin/neko/
