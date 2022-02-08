oc get taskrun | xargs oc delete taskrun
oc get pvc | grep -v NAME | cut -d ' ' -f 1 | xargs oc delete pvc

