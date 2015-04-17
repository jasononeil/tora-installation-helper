#!/bin/sh

cd tora
haxe tora.hxml
cd -
cp -R tora/*.n bin/tora/
