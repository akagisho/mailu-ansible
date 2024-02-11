#!/usr/bin/env bash

set -ex

cd $(dirname $0)

git submodule update --init --recursive
git submodule update --recursive --remote

LANG=C.UTF-8 ansible-playbook -i inventories/production/hosts site.yml -v
