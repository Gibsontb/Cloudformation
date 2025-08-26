#!/usr/bin/env bash
set -euo pipefail
# Example bulk deploy with per-template stacks (edit before use)
declare -A stacks=(
  ["cfn/10-network-vpc-baseline/template.yaml"]="net-baseline"
  ["cfn/11-edge-dns-waf/template.yaml"]="edge-waf"
)
for t in "${!stacks[@]}"; do
  n="${stacks[$t]}"
  echo "Deploying $t as $n"
  aws cloudformation deploy --stack-name "$n" --template-file "$t" --capabilities CAPABILITY_NAMED_IAM     --parameter-overrides Environment=dev ProjectName=CorePlatform Owner=tgibson@omgroup.example CostCenter=CC-0000 DataClassification=Internal
done
