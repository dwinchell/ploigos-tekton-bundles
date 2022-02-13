#!/bin/sh
set -e

oc create -f pipelineruns/everything-java.yml
sleep 1
tkn pipelinerun describe --last -o yaml | yq .status.conditions

