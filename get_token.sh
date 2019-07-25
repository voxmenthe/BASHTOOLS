#!/bin/bash

set -e

PROJECT=ml-dev
NAMESPACE=jeffrey

POD_NAME=$(kubectl get pod -l app=${PROJECT} -o jsonpath="{.items[0].metadata.name}" -n $NAMESPACE)
JUPYTER_KEY=$(kubectl logs ${POD_NAME} -n $NAMESPACE| grep 'token=' | head -n 1 | cut -d '=' -f 2)
echo ""
echo "Enjoy: your engine is live at: 

http://lab.${PROJECT}.${NAMESPACE}.dev.originapps.federated.fds?token=${JUPYTER_KEY}"

echo ""
echo "If no Jupyter key is printed, please do the following:"
echo "Get the name of the POD for this project (after it has been created):"
echo "kubectl get pod -l app=${PROJECT}"
echo "Get the token from the logs from POD creation:"
echo "kubectl logs ${POD_NAME}"
