#!/bin/bash

#ROOT_FOLDER=$PWD
#SOURCE_FOLDER=$PWD/todoApp
#OUTPUT_BUILD_FOLDER=$SOURCE_FOLDER/dist
#DIST_FOLDER=$PWD/dist

#mkdir -p $DIST_FOLDER
cd agapp

#npm config set registry https://registry.npmjs.org/s
npm i > /dev/null
#npm install --ignore-scripts > /dev/null
npm install -g @angular/cli > /dev/nulls
#npm install -g @angular/cli@8.0.3 > /dev/null
#npm install @angular-devkit/build-angular > /dev/null
#npm i > /dev/null
#npm run build --prod
ng build --prod
cp Staticfile target
cp manifest.yml target

#cd dist

ls -la
echo "*************************************"
ls -la target

#cp -R $OUTPUT_BUILD_FOLDER/* $DIST_FOLDER/
