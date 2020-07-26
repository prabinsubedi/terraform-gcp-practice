#provider "google" {
#  version = "3.5.0"

#  credentials = file("gcp_credentials.json")

#  project = "terraform-284313"
#  region  = "europe-west1"
#  zone    = "europe-west1-b"
#}


# Create a GCS Bucket
resource "google_storage_bucket" "terraform-bucket" {
  project       = var.gcp_project
  name          = var.bucket-name
  location      = var.gcp_region
  force_destroy = true
  storage_class = var.storage-class
  versioning {
    enabled = true
  }
}

#Create VPC Network 
resource "google_compute_network" "vpc_network" {
  name = var.terraform-vpc
}

# Create the VM on GCP
resource "google_compute_instance" "vm_instance" {
  name         = var.instance-name
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}