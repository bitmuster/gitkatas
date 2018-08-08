
# Git Kata: rebase branch

## Setup:

Run

    ./setup.sh && cd exercise


## The task

Dr. Jekyll and Mr. Hyde are working on a logbook while they perform
experiments. Both commit on their own branches. Later on the two persons
merge.

Your task is to merge their branches as into one branch.
Also keep the timeline in order. You can do this by doing an
interactive rebase

This is also a kata to cope with merge conflicts.
When you listen what git says it tells you what to do next.

The solution needs two interactive rebases. This is not an easy katta!

PS do not commit in interactive rebase when you have fixed
a merge conflict, only do "git add". It will commited after calling
git rebase --continue.


## Useful commands

    gitk --all
    git checkout <branch-name>
    git rebase <branch-name>
    git log --oneline --decorate --graph --all
    git merge <branchA> <branchB>

## Solution

    git rebase -i master hyde
        # 3 times
        git status
        vim logbook.txt
        git add logbook.txt
        git rebase --continue
    git status

    git rebase -i <first commit new logbook>
    #... and fix everything again

