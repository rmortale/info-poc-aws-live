# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "info-development"
  aws_account_id = "934152566335"
  # development role
  iam_role = "arn:aws:iam::934152566335:role/OrganizationAccountAccessRole"
}
