cd ~/develop/qemu
git fetch --prune
git push --prune hisi +refs/remotes/origin/*:refs/heads/* +refs/tags/*:refs/tags/*
cd ~/
