#! /bin/bash

mkdir /context
chmod 777 /context
ssh-agent bash -c 'ssh-add $KEY_FILE_PATH; git clone $GIT_SOURCE_REPO /context'
