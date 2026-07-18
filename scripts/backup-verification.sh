#!/bin/bash

echo "======================================="
echo "Backup Verification"
echo "======================================="

echo "Checking backup jobs..."

kubectl get jobs -n cockroachdb

echo ""
echo "Checking completed jobs..."

kubectl get pods -n cockroachdb

echo ""
echo "Backup Verification Completed"