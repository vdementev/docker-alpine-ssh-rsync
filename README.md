# Docker image with SSH and Rsync based on Alpine Linux

![Docker Pulls](https://img.shields.io/docker/pulls/dementev/ssh-rsync?style=flat-square) ![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/dementev/ssh-rsync?style=flat-square) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dementev/ssh-rsync/latest?style=flat-square) 

Small image to connect somewhere and move some files.

## Build local
`docker build --squash -t dementev/ssh-rsync:latest .`

Enable experimental features by starting dockerd with the --experimental flag or adding "experimental": true to the daemon.json file.

## In GitLab CI/CD
    before_script:
        - mkdir -p ~/.ssh && chmod 700 ~/.ssh
        - echo "$YOUR_SSH_PRIVATE_KEY_VARIABLE" | tr -d '\r' > ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa
        - ssh-keyscan -t rsa $YOUR_HOST_ADDRESS_VARIABLE >> ~/.ssh/known_hosts && chmod 644 ~/.ssh/known_hosts
    script:
        - rsync -avP --delete ./ $YOUR_HOST_USERNAME_VARIABLEE@$YOUR_HOST_ADDRESS_VARIABLE:$FILE_PATH_VARIABLE


## Disclaimer
I made this Docker image for myself, so I have not tested it in use cases that I do not use myself.