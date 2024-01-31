# Aliases

## Docker
alias dpsa="docker ps -a --format \"table {{.ID}}\t{{.Status}}\t{{.Names}}\t{{.RunningFor}}\t{{.Ports}}\""

## Git
alias git-housekeeping="git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done"
alias gitlab-mr="glab mr create --remove-source-branch --squash-before-merge --push"

## Misc
alias fix-network="sudo systemctl restart NetworkManager"
