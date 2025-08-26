#!/usr/bin/env bash
set -euo pipefail
for t in $(git ls-files 'cfn/**/*.yaml'); do
  echo "Validating $t"
  aws cloudformation validate-template --template-body "file://$t" >/dev/null || (echo "Validation failed for $t" && exit 1)
done
echo "All templates validated."
