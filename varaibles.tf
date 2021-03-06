# define GCP region
variable "gcp_region" {
  type        = string
  description = "GCP region"
}

# Define GCP Zone 
variable "gcp_zone" {
  type        = string
  description = "GCP zone"
}

# define GCP project name
variable "gcp_project" {
  type        = string
  description = "GCP project name"
}

# GCP authentication file
variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
}

variable "bucket-name" {
  type        = string
  description = "The name of the Google Storage Bucket to create"
}

variable "storage-class" {
  type        = string
  description = "The storage class of the Storage Bucket to create"
}

# Define Varaible for New VPC  
variable "terraform-vpc" {
  type        = string
  description = "VPC for Terraform Network Practice"
}

# Define Varaible for New VM 
variable "instance-name" {
  type        = string
  description = "Name of the new VM"
}