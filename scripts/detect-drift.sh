#!/usr/bin/env bash
set -euo pipefail
STACK="${1:?stack name}"

aws cloudformation detect-stack-drift --stack-name "$STACK"
echo "Waiting for drift detection..."
sleep 10
aws cloudformation describe-stack-drift-detection-status   --stack-drift-detection-id $(aws cloudformation detect-stack-drift --stack-name "$STACK" --query StackDriftDetectionId --output text) || true
aws cloudformation describe-stack-resource-drifts --stack-name "$STACK" --output table || true
