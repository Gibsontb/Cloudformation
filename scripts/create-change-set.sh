#!/usr/bin/env bash
set -euo pipefail
TEMPLATE="${1:?template path}"
STACK="${2:?stack name}"
CS_NAME="cs-$(date +%Y%m%d%H%M%S)"
shift 2 || true

aws cloudformation create-change-set   --stack-name "$STACK"   --change-set-name "$CS_NAME"   --template-body "file://$TEMPLATE"   --capabilities CAPABILITY_NAMED_IAM   "$@"

aws cloudformation wait change-set-create-complete   --stack-name "$STACK"   --change-set-name "$CS_NAME"

aws cloudformation describe-change-set   --stack-name "$STACK"   --change-set-name "$CS_NAME"   --output table
