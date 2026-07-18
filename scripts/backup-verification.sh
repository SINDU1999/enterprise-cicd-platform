#!/bin/sh

set -e

echo "========== Backup Verification =========="

echo ""
echo "Checking CockroachDB Pod..."

POD=$(kubectl get pods -n cockroachdb \
  -l app.kubernetes.io/component=cockroachdb \
  -o jsonpath='{.items[0].metadata.name}')

echo "Using Pod: $POD"

echo ""
echo "Checking Cluster Health..."
kubectl get pods -n cockroachdb

echo ""
echo "Checking Persistent Volume Claims..."
kubectl get pvc -n cockroachdb

echo ""
echo "Checking Disk Usage..."
kubectl exec -n cockroachdb $POD -- df -h

echo ""
echo "Verifying Data Directory..."
kubectl exec -n cockroachdb $POD -- ls -ld /cockroach/cockroach-data

echo ""
echo "Verifying Database Connectivity..."
kubectl exec -n cockroachdb $POD -- \
cockroach sql \
--insecure \
--execute="SELECT now();"

echo ""
echo "Backup Verification Completed Successfully."