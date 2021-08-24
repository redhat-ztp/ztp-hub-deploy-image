# ztp-hub-deploy-image
  
Ansible image builder for deploying a ztp hub cluster

## Usage:

    ansible-builder build --tag=quay.io/<user>/ztp-hub-deploy-image --context ./context --container-runtime podman
    podman push  quay.io/<user>/ztp-hub-deploy-image:latest
    podman run --mount=type=bind,source=/root/inventory.yaml,destination=/runner/inventory/hosts --mount=type=bind,source=/opt/environment,target=/runner/env  quay.io/redhat-ztp/ztp-hub-deploy-image

## Usage with tox:

    tox -ebuild -- <user>

## Configuration directories

In `/root/hosts-runner` you need to place your inventory file, it needs to be mounted then
to the inventory path. Use `https://github.com/redhat-ztp/ztp-hub-deploy/blob/main/inventory/hosts.yaml.sample` as a sample

In `/opt/environment` you need to place your environment settings (command line, env vars, tags, passwords...) as shown
on https://ansible-runner.readthedocs.io/en/stable/intro.html

### Run bash linters:

    tox -elinters
