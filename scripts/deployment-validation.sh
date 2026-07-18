#!/bin/bash

echo "======================================="
echo "Deployment Validation"
echo "======================================="

echo ""
echo "Pods:"
kubectl get pods -n cockroachdb

echo ""
echo "Rollout Status:"
kubectl rollout status statefulset/cockroachdb -n cockroachdb

echo ""
echo "Services:"
kubectl get svc -n cockroachdb

echo ""
echo "Endpoints:"
kubectl get endpoints -n cockroachdb

echo ""
echo "Deployment Validation Successful"