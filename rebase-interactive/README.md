
TODO: Split into two: rebase interactive and deep-merge-conflict


# Git Kata: rebase branch
## Setup:
Run ./setup.sh && cd exercise


## The task

Dr. Jekyll and Mr. Hide are working on a logbook while they do science
They commit on their own branchs.
Merge those branchs into one.

Do this and keep the timeline in order.
You can do this by doing an interactive rebase

This is also a kata to cope with merge conflicts.

When you listen what git says it tells you what to do next.

PS do not commit in interactive rebase when you have fixed
a merge conflict, only do "git add"

WTF meine shell verschwindet hin und wieder ????????????????????????????
 - bsp git rebase .... das kommando ist allerdings trozdem gelaufen

Ich habs selber noch nicht hingekriegt

git rebase --continue
git add logbook.txt 
vim logbook.txt 


## Useful commands
- `git checkout <branch-name>`
- `git rebase <branch-name>`
- `git log --oneline --decorate --graph --all`
- `git merge <branchA> <branchB>`
