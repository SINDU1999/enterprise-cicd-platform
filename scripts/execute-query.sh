#!/bin/sh

echo "========== Execute Query =========="

echo ""
echo "Finding CockroachDB Pod..."

POD=$(kubectl get pods -n cockroachdb \
  -l app.kubernetes.io/component=cockroachdb \
  -o jsonpath='{.items[0].metadata.name}')

echo "Using Pod: $POD"

echo ""
echo "Displaying Databases..."
kubectl exec -n cockroachdb $POD -- \
cockroach sql \
--insecure \
--execute="SHOW DATABASES;"

echo ""
echo "Current Database..."
kubectl exec -n cockroachdb $POD -- \
cockroach sql \
--insecure \
--execute="SELECT current_database();"

echo ""
echo "Current User..."
kubectl exec -n cockroachdb $POD -- \
cockroach sql \
--insecure \
--execute="SELECT current_user;"

echo ""
echo "Cluster Version..."
kubectl exec -n cockroachdb $POD -- \
cockroach sql \
--insecure \
--execute="SHOW CLUSTER SETTING version;"

echo ""
echo "Execute Query Completed Successfully."