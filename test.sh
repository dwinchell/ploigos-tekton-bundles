#!/bin/sh
set -e

oc apply -f pvcs.yaml

oc create -f pipelinerun.yaml
sleep 1
tkn pipelinerun describe --last
