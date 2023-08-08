terraform {
  backend "s3" {
    bucket                  = ""
    key                     = "awesome-note-app-development/terraform.tfstate"
    region                  = "ap-northeast-1"
  }
}
