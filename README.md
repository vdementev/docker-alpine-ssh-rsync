# Docker image with ssh and rsync based on Alpine

## Build local
`docker build --squash -t dementev/ssh-rsync:latest .`
Enable experimental features by starting dockerd with the --experimental flag or adding "experimental": true to the daemon.json file.

## In GitLab CI/CD