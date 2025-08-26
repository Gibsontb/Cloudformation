\# create

aws cloudformation create-stack \\

&nbsp; --stack-name core-enterprise \\

&nbsp; --template-body file://enterprise-template.yml \\

&nbsp; --capabilities CAPABILITY\_NAMED\_IAM \\

&nbsp; --stack-policy-body file://stack-policy.json \\

&nbsp; --parameters \\

&nbsp;     ParameterKey=Environment,ParameterValue=dev \\

&nbsp;     ParameterKey=ProjectName,ParameterValue=ZeroTrustSaaS \\

&nbsp;     ParameterKey=Owner,ParameterValue=gibsontbc@gmail.com \\

&nbsp;     ParameterKey=CostCenter,ParameterValue=CC-1234 \\

&nbsp;     ParameterKey=DataClassification,ParameterValue=Internal \\

&nbsp;     ParameterKey=VpcId,ParameterValue=vpc-xxxxxxxx \\

&nbsp;     ParameterKey=SubnetIds,ParameterValue='subnet-aaa,subnet-bbb' \\

&nbsp;     ParameterKey=EnableKms,ParameterValue=false \\

&nbsp;     ParameterKey=S3SseMode,ParameterValue=SSE-S3



\# update

aws cloudformation update-stack \\

&nbsp; --stack-name core-enterprise \\

&nbsp; --template-body file://enterprise-template.yaml \\

&nbsp; --capabilities CAPABILITY\_NAMED\_IAM \\

&nbsp; --stack-policy-body file://stack-policy.json



