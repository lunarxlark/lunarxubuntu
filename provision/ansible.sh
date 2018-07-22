#!/bin/bash
pip install virtualenv --user
virtualenv ansible
cd ansible
source bin/activate
pip install ansible