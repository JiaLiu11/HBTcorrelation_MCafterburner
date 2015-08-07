#!/usr/bin/env bash

echo "start to build executables..."
if [ ! -d cbuild ] ;then
  mkdir cbuild
fi

(
  cd cbuild
  cmake ../ > log
  make > log
  make install > log
)
#rm -rf cbuild

echo "build completes!"
