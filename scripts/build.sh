#!/bin/bash

rm -rf ./ak_temp
mkdir -p ak_temp
git clone https://github.com/autokey/autokey --depth 1 --branch develop --single-branch ak_temp

rm -rf ./_build
mkdir -p _build
sphinx-build -a -E -b html . ./_build


