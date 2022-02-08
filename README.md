This repository contains (Tekton Bundles)[https://github.com/tektoncd/community/blob/main/teps/0005-tekton-oci-bundles.md] for Ploigos based Pipelines and Tasks.

#SETUP
```
create -f pgp-keys-secret.yaml   # This is not committed because it contains a private key
create -f gitea-key-secret.yaml  # This is not committed because it contains a private key
oc secrets link pipeline quarkus-quickstart-ssh --for=pull
```
