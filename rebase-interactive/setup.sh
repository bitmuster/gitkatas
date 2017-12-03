#/bin/bash

# Include utils
source ../utils/utils.sh
kata="rebase-branch"
set -e

makerepo

touch greeting.txt
git add greeting.txt
git commit -m "Add file greeting.txt"

echo "hello" > greeting.txt
git add greeting.txt
git commit --date="2005-02-07 22:13:13" -m "Add content to greeting.txt"

echo "hellole" > greeting.txt
git add greeting.txt
git commit --date="2005-04-07 22:13:13" -m "Add content to greeting.txt"

# Go to uppercase on a branch
git checkout -b uppercase
echo "HELLO" > greeting.txt
git commit -am "Change greeting to uppercase"

echo "hellolelleole" > greeting.txt
git add greeting.txt
git commit --date="2005-05-07 22:13:13" -m "Add content to greeting.txt"


# Move forward on master
git checkout master
echo "Greetings library" > README.md
git add README.md
git commit -m "Add readme"

