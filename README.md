# Packer Builder

Container-based builder for [Packer](https://www.packer.io/) using [QEMU](https://www.qemu.org/) and [Ansible](https://www.ansible.com/). 

Derived from [mkaczanowski/packer-builder-arm](https://github.com/mkaczanowski/packer-builder-arm).

## Table of Contents

* [Usage](#usage)
* [License](#license)

## <a name="usage"></a> Usage

* Packer init:

```bash
docker run --rm --privileged -v /dev:/dev -v ${PWD}:/build ghcr.io/rarrais/packer-builder:latest init <packer_file>
```

* Packer validate:

```bash
docker run --rm --privileged -v /dev:/dev -v ${PWD}:/build ghcr.io/rarrais/packer-builder:latest validate <packer_file>
```

* Packer build:

```bash
docker run --rm --privileged -v /dev:/dev -v ${PWD}:/build ghcr.io/rarrais/packer-builder:latest build <packer_file>
```

## <a name="license"></a>License

Apache License 2.0
