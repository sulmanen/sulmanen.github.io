#!/bin/sh
echo "publish $(date +%F)"
rsync -aHE * ../sulmanen.github.io/cv/
cd ../sulmanen.github.io/
git add .
git ci -m"$(date +%F)"
git push me master
cd ../sulmanen.io
echo "done."
