#!/bin/bash

#ROOT_FOLDER=$PWD
#SOURCE_FOLDER=$PWD/todoApp
#OUTPUT_BUILD_FOLDER=$SOURCE_FOLDER/dist
#DIST_FOLDER=$PWD/dist

#mkdir -p $DIST_FOLDER
cd agapp

#npm config set registry https://registry.npmjs.org/
#npm install --ignore-scripts
#npm install -g @angular/cli
npm install -g @angular/cli> /dev/null
npm install --save-dev @angular-devkit/build-angular
#npm run build --prod
ng build --prod
cp Staticfile dist/agapp

#cd dist

ls -la
echo "*************************************"
ls -la dist/agapp

#cp -R $OUTPUT_BUILD_FOLDER/* $DIST_FOLDER/
