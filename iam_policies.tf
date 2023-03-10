data "aws_iam_policy_document" "infra_admin" {
  version = "2012-10-17"
  statement { 
    effect = "Allow"
    actions = [
        "acm:*",
        "autoscaling:*",
        "autoscaling-plans:*",
        "cloudformation:*",
        "cloudtrail:*",
        "cloudwatch:*",
        "dynamodb:*",
        "ebs:*",
        "ecr:*",
        "ec2:*",
        "elasticache:*",
        "elasticfilesystem:*",
        "elasticloadbalancing:*",
        "eks:*",
        "ecs:*",
        "es:*",
        "iam:AddRoleToInstanceProfile",
        "iam:AttachGroupPolicy",
        "iam:AttachRolePolicy",
        "iam:CreateInstanceProfile",
        "iam:CreatePolicy",
        "iam:CreateRole",
        "iam:CreateServiceLinkedRole",
        "iam:DeleteInstanceProfile",
        "iam:DeletePolicy",
        "iam:DeleteRole",
        "iam:DeleteRolePolicy",
        "iam:DetachRolePolicy",
        "iam:GenerateServiceLastAccessedDetails",
        "iam:GenerateOrganizationsAccessReport",
        "iam:GenerateCredentialReport",
        "iam:GetAccountSummary",
        "iam:GetInstanceProfile",
        "iam:GetRole",
        "iam:GetPolicy",
        "iam:GetPolicyVersion",
        "iam:GetRolePolicy",
        "iam:GetServiceLastAccessedDetails",
        "iam:GetServiceLastAccessedDetailsWithEntities",
        "iam:GetOrganizationsAccessReport",
        "iam:ListAccountAliases",
        "iam:ListAttachedRolePolicies",
        "iam:ListRoles",
        "iam:ListUsers",
        "iam:ListGroups",
        "iam:ListInstanceProfiles",
        "iam:ListInstanceProfilesForRole",
        "iam:ListPolicies",
        "iam:ListPolicyVersions",
        "iam:ListRolePolicies",
        "iam:ListPoliciesGrantingServiceAccess",
        "iam:PassRole",
        "iam:PutRolePolicy",
        "iam:RemoveRoleFromInstanceProfile",
        "iam:TagRole",
        "iam:UpdateAssumeRolePolicy",
        "lambda:*",
        "iotfleetwise:*",
        "kafka:*",
        "kms:*",
        "logs:*",
        "rds:*",
        "route53:*",
        "route53domains:*",
        "secretsmanager:*",
        "ses:*",
        "sns:*",
        "ssm:*",
        "sts:AssumeRole",
        "sts:DecodeAuthorizationMessage",
        "s3:*",
        "sqs:*",
        "tag:*"
    ]
    resources = ["*"]
    sid = "AdminServices"
}
}

data "aws_iam_policy_document" "infra_developer" {
  version = "2012-10-17"
  statement { 
    effect = "Allow"
    actions = [
        "acm:List*",
        "autoscaling:List*",
        "autoscaling-plans:List*",
        "cloudformation:List*",
        "cloudtrail:List*",
        "cloudwatch:List*",
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "dynamodb:List*",
        "ebs:List*",
        "ecs:List*",
        "ecr:List*",
        "ec2:List*",
        "elasticache:List*",
        "elasticfilesystem:List*",
        "elasticloadbalancing:List*",
        "eks:List*",
        "eks:Describe*",
        "es:List*",
        "iam:List*",
        "lambda:List*",
        "kafka:List*",
        "kms:List*",
        "logs:List*",
        "rds:List*",
        "route53:List*",
        "secretsmanager:List*",
        "ses:List*",
        "sns:List*",
        "ssm:List*",
        "ssm:GetParameters",
        "ssm:Describe*",
        "ssm:GetParameter",
        "s3:List*",
        "tag:List*",
        "acm:Describe*",
        "autoscaling:Describe*",
        "autoscaling-plans:Describe*",
        "cloudformation:Describe*",
        "cloudtrail:Describe*",
        "dynamodb:Describe*",
        "ebs:Describe*",
        "ecs:Describe*",
        "ecr:Describe*",
        "ec2:Describe*",
        "elasticache:Describe*",
        "elasticfilesystem:Describe*",
        "elasticloadbalancing:Describe*",
        "eks:Describe*",
        "es:Describe*",
        "iam:Describe*",
        "lambda:Describe*",
        "kafka:Describe*",
        "kms:Describe*",
        "logs:Describe*",
        "rds:Describe*",
        "route53:Describe*",
        "route53:Get*",
        "route53:List*",
        "secretsmanager:Describe*",
        "ses:Describe*",
        "sns:Describe*",
        "ssm:Describe*",
        "s3:Describe*",
        "tag:Describe*"
    ]
    resources = ["*"]
    sid = "DeveloperServices"
}
}


data "aws_iam_policy_document" "infra_viewer" {
  version = "2012-10-17"
  statement { 
    effect = "Allow"
    actions = [
        "acm:List*",
        "autoscaling:List*",
        "autoscaling-plans:List*",
        "cloudformation:List*",
        "cloudtrail:List*",
        "cloudwatch:List*",
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "dynamodb:List*",
        "ebs:List*",
        "ecs:List*",
        "ecr:List*",
        "ec2:List*",
        "elasticache:List*",
        "elasticfilesystem:List*",
        "elasticloadbalancing:List*",
        "eks:List*",
        "eks:Describe*",
        "es:List*",
        "iam:List*",
        "lambda:List*",
        "kafka:List*",
        "kms:List*",
        "logs:List*",
        "rds:List*",
        "route53:List*",
        "secretsmanager:List*",
        "ses:List*",
        "sns:List*",
        "ssm:List*",
        "ssm:GetParameters",
        "ssm:Describe*",
        "ssm:GetParameter",
        "s3:List*",
        "tag:List*",
        "acm:Describe*",
        "autoscaling:Describe*",
        "autoscaling-plans:Describe*",
        "cloudformation:Describe*",
        "cloudtrail:Describe*",
        "dynamodb:Describe*",
        "ebs:Describe*",
        "ecs:Describe*",
        "ecr:Describe*",
        "ec2:Describe*",
        "elasticache:Describe*",
        "elasticfilesystem:Describe*",
        "elasticloadbalancing:Describe*",
        "eks:Describe*",
        "es:Describe*",
        "iam:Describe*",
        "lambda:Describe*",
        "kafka:Describe*",
        "kms:Describe*",
        "logs:Describe*",
        "rds:Describe*",
        "route53:Describe*",
        "route53:Get*",
        "route53:List*",
        "secretsmanager:Describe*",
        "ses:Describe*",
        "sns:Describe*",
        "ssm:Describe*",
        "s3:Describe*",
        "tag:Describe*"
    ]
    resources = ["*"]
    sid = "ViewerServices"
}
}


data "aws_iam_policy_document" "infra_iam_admin" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    actions = [
        "iam:*",
    ]
    resources = ["*"]
    sid = "IamAdminServices"
  }
}