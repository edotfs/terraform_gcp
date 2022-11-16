// Terraform Configuration
provider "google" {
    project = "edot_000001"
    region = "us-west2"
}
// Terraform - GCP Resources
resource "google_compute_instance" "default" {
    name = "vm-ubuntu-001_-tf"
    machine_type = "f1-micro"
    zone = "us-west2-a"

    boot_disk {
        initialize_params {
            image = "ubuntu-os-cloud/ubuntu-1804-lts"
        }
    }

    network_interface {
        network = "default"
        }
        }