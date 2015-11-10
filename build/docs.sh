#!/bin/bash

cd ..
LHOME=$(pwd)

rm -rf $LHOME/resources/docs
mkdir $LHOME/resources/docs

mkdir $LHOME/resources/docs/5.0
cd $LHOME/resources/docs/5.0 && git pull origin 5.0

mkdir $LHOME/resources/docs/5.1
cd $LHOME/resources/docs/5.1 && git pull origin 5.1

mkdir $LHOME/resources/docs/master
cd $LHOME/resources/docs/master && git pull origin master
