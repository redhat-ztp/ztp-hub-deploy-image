# ztp-hub-deploy-image
Ansible image builder for deploying a ztp hub cluster

Usage:

ansible-builder build --tag=quay.io/<user>/ztp-hub-deploy-image --context ./context --container-runtime podman
podman push  quay.io/<user>/ztp-hub-deploy-image:latest
podman run -e INVENTORY=<inventory_path>  quay.io/<user>/ztp-hub-deploy-image


