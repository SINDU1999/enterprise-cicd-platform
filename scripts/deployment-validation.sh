#!/bin/sh

set -e

echo "========== Deployment Validation =========="

echo ""
echo "Checking StatefulSet Rollout Status..."
kubectl rollout status statefulset/cockroachdb -n cockroachdb

echo ""
echo "Checking Pod Readiness..."
kubectl get pods -n cockroachdb

echo ""
echo "Checking Container Images..."
kubectl get pods -n cockroachdb \
-o custom-columns=NAME:.metadata.name,IMAGE:.spec.containers[*].image

echo ""
echo "Checking Service Endpoints..."
kubectl get endpoints -n cockroachdb

echo ""
echo "Checking Recent Warning Events..."
kubectl get events -n cockroachdb \
--field-selector type=Warning \
--sort-by=.lastTimestamp || true

echo ""
echo "Deployment Validation Completed Successfully."