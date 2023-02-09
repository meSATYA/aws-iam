resource "aws_iam_group" "iam_groups" {
   name = var.iam_groups
}

# resource "aws_iam_group_policy" "iam_group_policy" {
#   count = length(var.iam_policies)
#   name = aws_iam_group.iam_groups.name
#   group = aws_iam_group.iam_groups.name
#   policy = var.iam_policies[count.index]
#   depends_on = [
#     aws_iam_group.iam_groups
#   ]
# }


resource "aws_iam_user" "iam_user" {
  count = length(var.iam_users)
  name = var.iam_users[count.index]
  tags = {
    env = "dev"
  }
  depends_on = [
    aws_iam_group.iam_groups
  ]
}

data "aws_iam_user" "iam_users" {
  count = length(var.iam_users)
  user_name = var.iam_users[count.index]
  depends_on = [
    aws_iam_user.iam_user
  ]
}

resource "aws_iam_group_membership" "iam_users_group" {
  name = "iam-group-users"
  group = aws_iam_group.iam_groups.name
  users = data.aws_iam_user.iam_users[*].user_name
  depends_on = [
    aws_iam_user.iam_user
  ]
}