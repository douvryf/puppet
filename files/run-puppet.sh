#!/bin/bash
cd /etc/puppetlabs/code/environments/production && git pull
/usr/sbin/puppet apply manifests/
