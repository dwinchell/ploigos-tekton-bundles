for f in infra/*-secret.yml; do sops -d $f | oc create -f -; done
