locals {
  aws_account_id = "670121248505"
}

provider "aws" {
  allowed_account_ids = [
    local.aws_account_id
  ]
  region = "us-east-1"
  profile = "default"
}

resource "aws_iam_group" "infra_admin" {
  name = "infra_admin"
}

resource "aws_iam_group_policy" "infra_admin_user_policy" {
  name = "infra_admin_user_policy"
  group = aws_iam_group.infra_admin.name
  policy = data.aws_iam_policy_document.infra_admin.json
}

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


resource "aws_iam_group" "infra_developer" {
  name = "infra_developer"
}

resource "aws_iam_group_policy" "infra_developer_user_policy" {
  name = "infra_admin_user_policy"
  group = aws_iam_group.infra_developer.name
  policy = data.aws_iam_policy_document.infra_developer.json
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

resource "aws_iam_group" "infra_viewer" {
  name = "infra_viewer"
}

resource "aws_iam_group_policy" "infra_viewer_user_policy" {
  name = "infra_viewer_user_policy"
  group = aws_iam_group.infra_viewer.name
  policy = data.aws_iam_policy_document.infra_viewer.json
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

resource "aws_iam_group" "infra_iam_admin" {
  name = "infra_iam_admin"
}

resource "aws_iam_group_policy" "infra_iam_admin_user_policy" {
  name = "infra_iam_admin_user_policy"
  group = aws_iam_group.infra_iam_admin.name
  policy = data.aws_iam_policy_document.infra_iam_admin.json
}

data "aws_iam_policy_document" "infra_iam_admin" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    actions = [
        "iam:*",
    ]
    resources = ["*"]
  }
}

