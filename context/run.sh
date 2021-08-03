#! /bin/bash
ansible-runner run --inventory=$INVENTORY -p ../ztp-cluster-deploy/install-ai-operator/playbook.yml runner
