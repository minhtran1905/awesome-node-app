terraform {
  backend "s3" {
    bucket                  = ""
    key                     = "awesome-note-app-staging/terraform.tfstate"
    region                  = "ap-northeast-1"
  }
}
