#!/bin/bash

cd ../parent

helm dependency build
helm package .
