#!/bin/bash

CHILD_VERSION="0.2.0"
cd ../

helm package child/

helm push child-$CHILD_VERSION.tgz oci://asia-south1-docker.pkg.dev/curious-checking-stuff/helm-chart-repository
