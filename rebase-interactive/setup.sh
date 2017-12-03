#/bin/bash

# Include utils
source ../utils/utils.sh
kata="rebase-branch"
set -e

makerepo

touch logbook.txt
git add logbook.txt
git commit --date="2000-01-01 22:22:22" -m "New logbook.txt"


git checkout -b jekyll

for i in 1 2 3; do 
    echo "Jeykill: Day $i it does not seem to work" >> logbook.txt
    git add logbook.txt
    git commit --date="2000-01-0$i 14:14:14" -m "Jeykill working on issue"
done

git checkout master
git checkout -b hide

for i in 1 2 3; do 
    echo "Hide: Day $i it works I feel perfect" >> logbook.txt
    git add logbook.txt
    git commit --date="2000-01-0$i 02:02:02" -m "Hide made it work"
done

# Move forward on master
git checkout master
git merge jekyll
