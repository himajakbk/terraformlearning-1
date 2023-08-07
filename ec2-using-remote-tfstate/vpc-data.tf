data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    #hostname = "app.terraform.io"
    organization = "himajakbkorganization"
    workspaces = {
      name = "terraformlearning-networking"
    }
  }
}
