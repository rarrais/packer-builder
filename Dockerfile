# syntax = docker/dockerfile:1

FROM mkaczanowski/packer-builder-arm

ENV DEBIAN_FRONTEND=noninteractive
ENV PACKER_LOG=0

# Ansible Installation
RUN apt update \
    && apt install software-properties-common gpg-agent --no-install-recommends -y \
    && add-apt-repository --yes --update ppa:ansible/ansible \
    && apt install ansible git --no-install-recommends -y \
    && ansible-galaxy collection install ansible.posix \
    && rm -rf /var/lib/apt/lists/* 
