#!/bin/bash

sed -i -e 's/\\\\(/\\(/g' src/**/*.md
sed -i -e 's/\\\\\[/\\[/g' src/**/*.md
sed -i -e 's/\\\\)/\\)/g' src/**/*.md
sed -i -e 's/\\\\]/\\]/g' src/**/*.md

