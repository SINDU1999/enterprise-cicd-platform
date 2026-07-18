#!/bin/sh

echo "========== Database Operations =========="

echo ""
echo "Checking CockroachDB Pods..."
kubectl get pods -n cockroachdb

echo ""
echo "Checking StatefulSet..."
kubectl get statefulset -n cockroachdb

echo ""
echo "Checking Services..."
kubectl get svc -n cockroachdb

echo ""
echo "Checking Persistent Volumes..."
kubectl get pvc -n cockroachdb

echo ""
echo "Database Operations Completed."