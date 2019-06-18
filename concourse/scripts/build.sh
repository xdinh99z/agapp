#!/bin/bash

#ROOT_FOLDER=$PWD
#SOURCE_FOLDER=$PWD/todoApp
#OUTPUT_BUILD_FOLDER=$SOURCE_FOLDER/dist
#DIST_FOLDER=$PWD/dist

#mkdir -p $DIST_FOLDER
cd agapp

npm install
npm install @angular/cli
npm run build --prod

#cd dist

ls -la
#cp -R $OUTPUT_BUILD_FOLDER/* $DIST_FOLDER/
