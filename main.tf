provider "google" {
  credentials = "${file("${var.gcp_credentials}")}"
  project     = "${var.gcp_project}"
  region      = "${var.gcp_region}"
}

resource "google_compute_instance" "default" {
  name         = "default"
  machine_type = "n1-standard-8"
  zone         = "${var.gcp_zone}"

  tags = ["project", "test"]

  boot_disk {
    initialize_params {
      size = 20
      image = "centos-cloud/centos-7"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    foo = "bar"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

  scheduling {
    preemptible = true
    on_host_maintenance = "TERMINATE"
    automatic_restart = false
  }
}
