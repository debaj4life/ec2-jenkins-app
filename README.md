Repository: git@gitlab.com:lamtech-tooling/terraform/jenkins-ec2-app.git
Description:
Provisioning AWS EC2 instances to deploy jenkins controller and agent.
Prerequisites:

Terraform version: ~>1.3.3

Provider:

Source = hashicorp/aws
Version = ~>4.0
Backend = S3 bucket

Installation:

Install Terraform.
Configure S3 bucket
Terraform configuration files.

Usage:

Run terraform init to initialize the project.
Run terraform plan to plan the resources.
Run terraform apply to create the resources.

Variables:


region: AWS region (required)

controller_instance_type: EC2 instance types (default: t3.medium)

agent_instance_type: EC2 instance types (default: t3.large)

Outputs:


domain name: Web address of the created EC2 instance for contoller.

Accessing Jenkins:

ssh into your server - ssh -i "tutorial-key.pem" ec2-user@ec2-xx-xx-xxx-xx.eu-west-2.compute.amazonaws.com.
Enter https://jenkins.techrite.org into your browser.
Follow the instructions on configuring jenkins controller and agent - https://lamtech.atlassian.net/wiki/spaces/DT/pages/1077837827/Jenkins+Terraform+Deployment
