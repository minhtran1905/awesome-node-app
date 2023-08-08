terraform {
  backend "s3" {
    bucket                  = ""
    key                     = "awesome-note-app-production/terraform.tfstate"
    region                  = "ap-northeast-1"
  }
}
