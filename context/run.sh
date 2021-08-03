#! /bin/bash
ansible-runner transmit /runner -p /runner/ztp-cluster-deploy/install-ai-operator/playbook.yml  | ansible-runner worker | ansible-runner process /runner
