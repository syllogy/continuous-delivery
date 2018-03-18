variable "region" {
  description = "AWS Region Name where pipeline will be deployed"
  default     = "us-east-1"
}

variable "environment" {
  description = "Name of the environment that will be managed"
  default     = "dev"
}

variable "github" {
  description = "Github information to be added into this pipeline"
  default     = {
    organization = "thiagonache"
    repository   = "testphp-app"
    branch       = "master"
  }
}
