#!/bin/bash

cd plutosdr-fw_0.38_libre
git reset --hard
git clean -xfdf
git submodule foreach --recursive git reset --hard
git submodule foreach --recursive git clean -xfdf
cd ..
