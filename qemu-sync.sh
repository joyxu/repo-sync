cd ~/develop/qemu
git fetch origin --prune
git fetch hisi
git push hisi +refs/remotes/origin/*:refs/heads/* +refs/tags/*:refs/tags/*
cd ~/
