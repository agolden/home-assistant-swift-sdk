#!/usr/bin/env python

import os

dirname = os.path.dirname(os.path.realpath(__file__))
logs_dir = os.path.join(dirname, 'docker_logs')
os.system('mkdir -p ' + logs_dir)

image_name = 'alexandergolden/home-assistant-rest-api-mock'
image_version = 'latest'
full_container = image_name + ':' + image_version
run_command = 'docker ps -q --filter ancestor=' + full_container
containers = os.popen(run_command).read().strip().splitlines()
log_name = image_name.split('/')[-1]
log_file = os.path.join(dirname, 'docker_logs', log_name + '.log')

# For each running container, save the log and then kill it
for container in containers:
    save_logs_command = 'docker logs ' + container + ' > ' + log_file + ' 2>&1'
    os.system(save_logs_command)
    os.system('docker stop ' + container)
