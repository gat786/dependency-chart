#!/bin/bash

cd ../parent

helm dependency update
helm dependency build
helm package .
