module "iam_users_and_groups" {
    source = "./modules/iam"
    for_each = local.iam_groups_list
    iam_groups = each.key
    iam_users = lookup(each.value, "users", [])
}


resource "aws_iam_group_policy" "infra_admin_group_policy" {
  name = "infra_admin_group_policy"
  group = "infra_admin"
  policy = data.aws_iam_policy_document.infra_admin.json
  depends_on = [
    module.iam_users_and_groups
  ]
}

resource "aws_iam_group_policy" "infra_developer_group_policy" {
  name = "infra_developer_group_policy"
  group = "infra_developer"
  policy = data.aws_iam_policy_document.infra_developer.json
  depends_on = [
    module.iam_users_and_groups
  ]
}

resource "aws_iam_group_policy" "infra_viewer_group_policy" {
  name = "infra_viewer_group_policy"
  group = "infra_viewer"
  policy = data.aws_iam_policy_document.infra_viewer.json
  depends_on = [
    module.iam_users_and_groups
  ]
}

resource "aws_iam_group_policy" "infra_iam_admin_group_policy" {
  name = "infra_iam_admin_group_policy"
  group = "infra_iam_admin"
  policy = data.aws_iam_policy_document.infra_iam_admin.json
  depends_on = [
    module.iam_users_and_groups
  ]
}