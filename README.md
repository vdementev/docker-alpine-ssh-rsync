# Docker image with ssh and rsync based on Alpine

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