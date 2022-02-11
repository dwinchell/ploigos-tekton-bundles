#!/bin/sh
set -ex

IMAGE_REGISTRY=quay.io
IMAGE_REGISTRY_USER=dwinchell_redhat
IMAGE_TAG=latest

# Build pipeline bundles
YAML_FILE=resources/pipelines/ploigos-everything-pipeline.yml
TASK_NAME=$(basename ${YAML_FILE} | sed 's/\(.*\)\.yml/\1/')
oc apply -f ${YAML_FILE}

# Build task bundles
for YAML_FILE in $(ls resources/tasks/*.yml); do
  TASK_NAME=$(basename ${YAML_FILE} | sed 's/\(.*\)\.yml/\1/')
  oc apply -f ${YAML_FILE}
done

