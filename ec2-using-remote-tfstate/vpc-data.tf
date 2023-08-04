data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    #hostname = "app.terraform.io"
    organization = "sagarkaushalorganization"
    workspaces = {
      name = "terraformlearning-networking"
    }
  }
}
