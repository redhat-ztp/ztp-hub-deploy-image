#! /bin/bash
git clone https://github.com/redhat-ztp/ztp-hub-deploy /runner/ztp-hub-deploy
ansible-runner transmit /runner -p /runner/ztp-hub-deploy/playbook.yml  | ansible-runner worker | ansible-runner process /runner
