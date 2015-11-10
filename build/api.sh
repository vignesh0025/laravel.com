#!/bin/bash

cd ..
LHOME=$(pwd)

cd $LHOME/build/sami

#if [ ! -d "$LHOME/public/api" ]; then
#  mkdir $LHOME/public/api
#fi

rm -rf $LHOME/public/api
mkdir $LHOME/public/api

rm -rf $LHOME/build/sami/build
rm -rf $LHOME/build/sami/cache

# Run API Docs
git clone https://github.com/laravel/framework.git $LHOME/build/sami/laravel

php $LHOME/vendor/bin/sami.php update $LHOME/build/sami/sami.php

cp -r $LHOME/build/sami/build/* $LHOME/public/api

rm -rf $LHOME/build/sami/build
rm -rf $LHOME/build/sami/cache

# Cleanup
rm -rf $LHOME/build/sami/laravel
