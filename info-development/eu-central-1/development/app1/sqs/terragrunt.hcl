locals {
  # Automatically load environment-level variables
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  # Extract out common variables for reuse
  env = local.environment_vars.locals.environment

}

terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-sqs.git?ref=v2.1.0"
}

include {
  path = find_in_parent_folders()
}


###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/sqs/aws/2.1.0?tab=inputs
###########################################################
inputs = {

  # Name of sqs queue
  # type: string
  name = "input1"

  # Description
  # type: string
  description = "Input queue"

}

