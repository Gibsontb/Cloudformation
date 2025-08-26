#!/usr/bin/env bash
set -euo pipefail

TEMPLATE_PATH="${1:-}"
STACK_NAME="${2:-}"
shift 2 || true

if [[ -z "${TEMPLATE_PATH}" || -z "${STACK_NAME}" ]]; then
  echo "Usage: ./deploy.sh <template-path> <stack-name> [--parameter-overrides K=V ...]"
  exit 1
fi

aws cloudformation deploy   --stack-name "${STACK_NAME}"   --template-file "${TEMPLATE_PATH}"   --capabilities CAPABILITY_NAMED_IAM "$@"
