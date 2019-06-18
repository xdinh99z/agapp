#!/bin/bash

# Login to team
fly_m --target manulife-ci login --team-name APAC_POS --concourse-url https://concourse.platform.manulife.io --insecure

# Create / Update pipeline
fly_m -t manulife-ci set-pipeline -p demo-web-agapp -c pipeline.yml -l credentials.yml

# Unpause pipeline
fly_m -t manulife-ci unpause-pipeline -p demo-web-agapp

# Unpause job
#fly -t manulife-ci unpause-job -j pos-report-template-sg-ci/deploy-dev


read -rsn1 -p"Press any key to continue";echo
