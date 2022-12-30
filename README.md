# terraform-aws-lambda
Terraform module for AWS lambda.

### Use

Create a Lambda function on AWS.

Run terraform init:
```shell
terraform init
```

Create a terraform plan with tfplan output:
````shell
terraform plan -out plan
````

Run your plan from the tfplan file:
```shell
terraform apply plan
```

Get information about the data resource:
```shell
terraform show
```

List your terraform state to get resources:
```shell
terraform state list
```

Create terraform destruction plan with a tfplan output:
```shell
terraform plan -destroy -out destroy
```

Run terraform destroy from tfplan file:
```shell
terraform apply destroy
```
