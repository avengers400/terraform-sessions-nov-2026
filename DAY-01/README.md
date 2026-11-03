# DAY-01: Provision an AWS EC2 instance with Terraform

This directory contains a minimal Terraform configuration that provisions one
EC2 instance in the `us-east-1` AWS region.

## Files

- `provider.tf` declares Terraform's minimum version (`>= 1.5.0`) and the
  HashiCorp AWS provider, pinned to version `6.0`.
- `main.tf` configures the AWS provider and declares an EC2 instance using
  AMI `ami-0d97d7f07b25dd693`, instance type `t3.micro`, and the name tag
  `demo-terraform-ec2`.

The AMI must be available in the selected region. If it is unavailable or
outdated, choose a valid AMI for `us-east-1` before applying the configuration.

## Prerequisites

- Terraform 1.5.0 or later
- AWS credentials configured for the AWS CLI or environment
- Permission to create and delete EC2 instances in `us-east-1`

## Usage

Run these commands from this directory:

```shell
terraform init
terraform validate
terraform plan
terraform apply
```

Review the plan before applying. Terraform will prompt for confirmation unless
you pass an automatic approval option.

To remove the instance created by this configuration:

```shell
terraform destroy
```

## Cost and security

An EC2 instance may incur AWS charges while it exists. Destroy resources when
they are no longer needed, and confirm the resulting plan before applying or
destroying. Do not commit AWS credentials or other secrets to this directory.
