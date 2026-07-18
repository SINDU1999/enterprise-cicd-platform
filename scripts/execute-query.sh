#!/bin/bash

echo "======================================="
echo "CockroachDB Query Execution"
echo "======================================="

kubectl exec -it cockroachdb-0 -n cockroachdb -- \
cockroach sql \
--insecure \
-e "SHOW DATABASES;"