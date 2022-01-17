provider “google” {
credentials = file(“/root/secret/hostbread-d44243ebddf5.json”)
project = “hostbread”
region = “us-central1”
zone = “us-central1-c”
}


resource “google_compute_instance” “vm_instance” {
name = “hostbread-tf-vm”
machine_type = “f1-micro”

 

boot_disk {
initialize_params {
image = “debian-cloud/debian-9”
}
}

network_interface {
# A default network is created for all GCP projects
#network = google_compute_network.vpc_network.self_link
network = “default”
access_config {
}
}
}
