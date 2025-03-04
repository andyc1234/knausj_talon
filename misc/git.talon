tag: terminal
and tag: user.git
-
# Standard commands
git add patch: "git add . -p"
git add: "git add "
git add everything: "git add -u"
git bisect: "git bisect "
git blame: "git blame "
git branch: "git branch "
git branch <user.text>: "git branch {text}"
git checkout: "git checkout "
git checkout master: "git checkout master"
git checkout main: "git checkout main"
git checkout <user.text>: "git checkout {text}"
git cherry pick: "git cherry-pick "
git cherry pick continue: "git cherry-pick --continue "
git cherry pick abort: "git cherry-pick --abort "
git cherry pick skip: "git cherry-pick --skip "
git clone: "git clone "
git clean everything: "git clean -dfx"
git commit: "git commit "
git commit all:
    insert("git commit -am ''")
    key(left)
git commit message:
    insert("git commit -m ''")
    key(left)
git diff (colour|color) words: "git diff --color-words "
git diff: "git diff "
git diff cached: "git diff --cached"
git fetch: "git fetch "
git fetch all: "git fetch --all"
git fetch <user.text>: "git fetch {text}"
git fetch prune: "git fetch --prune"
git in it: "git init"
git log all: "git log "
git log all changes: "git log -c"
git log: "git log "
git log changes: "git log -c "
git merge: "git merge "
git merge <user.text>:"git merge {text}"
git move: "git mv "
git new branch: "git checkout -b "
git pull: "git pull "
git pull origin: "git pull origin "
git pull rebase: "git pull --rebase"
git pull fast forward: "git pull --ff-only"
git pull <user.text>: "git pull {text} "
git push: "git push "
git push origin: "git push origin "
git push up stream origin: "git push -u origin"
git push <user.text>: "git push {text} "
git push tags: "git push --tags"
git rebase: "git rebase "
git rebase continue: "git rebase --continue"
git rebase skip: "git rebase --skip"
git (remove|delete) branch: "git branch -d "
git (remove|delete) remote branch: "git push --delete origin "
git reset: "git reset "
git reset soft: "git reset --soft "
git reset hard: "git reset --hard "
git restore: "git restore "
git restore staged: "git restore --staged "
git restore source: "git restore --source="
git remote: "git remote "
git remote add: "git remote add "
git remote add upstream: "git remote add upstream "
git remote remove: "git remote remove "
git remote show origin: "git remote show origin"
git show: "git show "
git stash pop: "git stash pop"
git stash: "git stash"
git stash apply: "git stash apply"
git stash list: "git stash list"
git stash show: "git stash show"
git status: "git status\n"
git switch [<user.text>]: "git switch {user.formatted_text(text or '', 'DASH_SEPARATED')}"
git switch master: "git switch master "
git switch main: "git switch main "
git switch detached: "git switch --detach "
git (switch create | new branch) [<user.text>]:
  "git switch -c {user.formatted_text(text or '', 'DASH_SEPARATED')}"
git switch orphan: "git switch --orphan "
git submodule add:  "git submodule add "
git tag: "git tag "

# Convenience
git edit config: "git config --local -e"

git clone clipboard:
  insert("git clone ")
  edit.paste()
  key(enter)
git diff highlighted:
    edit.copy()
    insert("git diff ")
    edit.paste()
    key(enter)
git diff clipboard:
    insert("git diff ")
    edit.paste()
    key(enter)
git add highlighted:
    edit.copy()
    insert("git add ")
    edit.paste()
    key(enter)
git add clipboard:
    insert("git add ")
    edit.paste()
    key(enter)
git commit highlighted:
    edit.copy()
    insert("git add ")
    edit.paste()
    insert("\ngit commit\n")
