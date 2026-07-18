#!/bin/bash

set -e

echo "=========================================="
echo "Enterprise AWS CockroachDB Platform"
echo "Database Operations Validation"
echo "=========================================="

echo ""
echo "Checking CockroachDB namespace..."
kubectl get namespace cockroachdb

echo ""
echo "Checking CockroachDB pods..."
kubectl get pods -n cockroachdb

echo ""
echo "Checking CockroachDB StatefulSet..."
kubectl get statefulset -n cockroachdb

echo ""
echo "Checking CockroachDB services..."
kubectl get svc -n cockroachdb

echo ""
echo "Database Operations Validation Completed Successfully"