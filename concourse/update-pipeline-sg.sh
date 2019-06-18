#!/bin/bash

# Login to team
fly --target manulife-ci login --team-name APAC_POS --concourse-url https://concourse.platform.manulife.io --insecure

# Create / Update pipeline
fly -t manulife-ci set-pipeline -p pos-report-template-sg-ci -c pipeline.yml -l config-sg.yml -l credentials.yml

# Unpause pipeline
fly -t manulife-ci unpause-pipeline -p pos-report-template-sg-ci

# Unpause job
#fly -t manulife-ci unpause-job -j pos-report-template-sg-ci/deploy-dev


read -rsn1 -p"Press any key to continue";echo
