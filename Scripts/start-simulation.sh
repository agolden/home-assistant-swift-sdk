#!/usr/bin/env python

import os
from time import sleep

full_container = 'alexandergolden/home-assistant-rest-api-mock:latest'
run_command = 'docker run -d -p 8123:8080 ' + full_container
os.system(run_command)

# Wait a second for the services to successfully start
sleep(1.0)
