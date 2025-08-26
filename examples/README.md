# Examples

## Validate a template
```
aws cloudformation validate-template --template-body file://cfn/10-network-vpc-baseline/template.yaml
```

## Create a change set
```
./scripts/create-change-set.sh cfn/10-network-vpc-baseline/template.yaml net-baseline
```

## Deploy VPC baseline (no NAT by default)
```
aws cloudformation deploy   --stack-name net-baseline   --template-file cfn/10-network-vpc-baseline/template.yaml   --capabilities CAPABILITY_NAMED_IAM   --parameter-overrides Environment=dev ProjectName=CorePlatform Owner=tgibson@omgroup.example CostCenter=CC-0000 DataClassification=Internal
```
