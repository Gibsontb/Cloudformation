# Author: TGibson
# Job Title: Cloud Architect
# Creation Date: 2025-08-26
# File Type: Cloudformation YAML Template
# Job Name:  aws-cfn-enterprise-templates

# aws-cfn-enterprise-templates

Enterprise-ready collection of **AWS CloudFormation** templates organized by layer (org/security/network/compute/data/ops).
All templates are **YAML**, secure-by-default, and parameterized with standardized tags.

## Quick start

```bash
# Deploy a template (example)
aws cloudformation deploy   --stack-name vpc-baseline-dev   --template-file cfn/10-network-vpc-baseline/template.yaml   --capabilities CAPABILITY_NAMED_IAM   --parameter-overrides       Environment=dev ProjectName=CorePlatform Owner=tgibson@omgroup.example CostCenter=CC-0000 DataClassification=Internal
```

> Many templates include a `CreateResources` or feature flags to avoid unintended charges.
> Always review each template and parameters before deploying.

## Structure

```
cfn/
  00-org-baseline/
  01-security-kms-secrets/
  02-logging-observability/
  10-network-vpc-baseline/
  11-edge-dns-waf/
  20-eks-cluster/
  21-eks-addons-irsa/
  30-rds-aurora/
  31-dynamodb-elasticache/
  40-serverless-api/
  50-cicd-pipeline/
  51-image-build-ecr/
  60-guardrails-sec-hub/
  61-backup-and-dr/
  70-cost-tagging/
  80-appconfig-featureflags/
  _shared/parameters/
  _shared/stack-policies/
  _shared/nested/
```

## Order of operations

1. Org Baseline (if using Organizations) → Config/Conformance Packs, CloudTrail (org), GuardDuty/SecHub admin
2. Security/KMS/Secrets
3. Network VPC
4. Edge/DNS/ACM/WAF
5. Compute (EKS/ECS/Serverless)
6. Data stores
7. CI/CD pipeline
8. Guardrails, Backup/DR, Cost/Tagging
