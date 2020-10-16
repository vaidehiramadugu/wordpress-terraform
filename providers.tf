provider "aws" {
  region = var.aws_reg
  access_key = ""
  secret_key = ""
  # version = "2.12.0"
  profile = "terraform"
}

provider "template" {
    version = "~> 2.1.2"
}
