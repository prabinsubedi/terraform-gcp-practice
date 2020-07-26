terraform {
  backend "gcs" {
    bucket = "terraform-state-prabin" #Make sure this bucket exist beforehand 
    prefix = "prabin-practice" # Good to have the project Name
    credentials = "gcp_credentials.json"
  }
}