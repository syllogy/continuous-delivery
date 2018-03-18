#I am not using terraform remote state in this example but we should use it

terraform {
  version = "0.11.4" 
}

data "aws_caller_identity" "current" {}

