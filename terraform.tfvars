# VPC - use these parameters to create new VPC resources
cidr = "102.10.0.0/16"

azs = ["us-east-1a", "us-east-1b"]

private_subnets = ["102.10.1.0/24", "102.10.2.0/24"]

public_subnets = ["102.10.11.0/24", "102.10.12.0/24"]

# VPC - use these parameters to use existing VPC resources
# vpc_id = "vpc-1651acf1"
# private_subnet_ids = ["subnet-1fe3d837", "subnet-129d66ab"]
# public_subnet_ids = ["subnet-1211eef5", "subnet-163466ab"]

# DNS
route53_zone_name = "devops.com.ph"

# ACM (SSL certificate)
# Specify ARN of an existing certificate or new one will be created and validated using Route53 DNS:
# certificate_arn = "arn:aws:acm:eu-west-1:135367859851:certificate/70e008e1-c0e1-4c7e-9670-7bb5bd4f5a84"

# ECS Service and Task
ecs_service_assign_public_ip = true

# Atlantis
# gitlab_base_url = ["https://github.com/devkinetics/"]
atlantis_repo_allowlist = ["terraform-aws-atlantis", "serverless-jenkins-on-ecs", "atlantis-test-repo"]

# Specify one of the following block.
# For Github
atlantis_github_user                          = "mikaelvg"
atlantis_github_user_token_ssm_parameter_name = "/dev/atlantis-fargate/TOKEN/github-token"   // Created in devios-secret-parameters repo.
webhook_ssm_parameter_name                    = "/dev/atlantis-fargate/SCRET/webhook-secret" // Override the default naming convention

# Tags
tags = {
  Name = "atlantis"
}
