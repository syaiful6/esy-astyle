#!/usr/bin/env bash

OS=$(uname)

mkdir -p "_build"
cd "_build"

if [ $OS == "Darwin" ]; then
  cmake "../mac"
elif [ $OS == "Linux" ] || [ $OS == "FreeBSD" ]; then
  cmake "../linux"
fi