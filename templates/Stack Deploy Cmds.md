\# Author: TGibson

\# Job Title: Cloud Architect

\# Creation Date: 2025-08-26

\# File Type: Cloudformation YAML Template

\# Job Name: Stack Deploy Cmds





\# create

aws cloudformation create-stack \\

  --stack-name core-enterprise \\

  --template-body file://enterprise-template.yml \\

  --capabilities CAPABILITY\_NAMED\_IAM \\

  --stack-policy-body file://stack-policy.json \\

  --parameters \\

      ParameterKey=Environment,ParameterValue=dev \\

      ParameterKey=ProjectName,ParameterValue=ZeroTrustSaaS \\

      ParameterKey=Owner,ParameterValue=gibsontbc@gmail.com \\

      ParameterKey=CostCenter,ParameterValue=CC-1234 \\

      ParameterKey=DataClassification,ParameterValue=Internal \\

      ParameterKey=VpcId,ParameterValue=vpc-xxxxxxxx \\

      ParameterKey=SubnetIds,ParameterValue='subnet-aaa,subnet-bbb' \\

      ParameterKey=EnableKms,ParameterValue=false \\

      ParameterKey=S3SseMode,ParameterValue=SSE-S3



\# update

aws cloudformation update-stack \\

  --stack-name core-enterprise \\

  --template-body file://enterprise-template.yaml \\

  --capabilities CAPABILITY\_NAMED\_IAM \\

  --stack-policy-body file://stack-policy.json

