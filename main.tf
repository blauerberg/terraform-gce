provider "google" {
  credentials = "${file("${var.gcp_credentials}")}"
  project     = "${var.gcp_project}"
  region      = "${var.gcp_region}"
}

resource "google_compute_instance" "default" {
  name         = "${var.gce_name}"
  machine_type = "${var.gce_machine_type}"
  zone         = "${var.gcp_zone}"

  tags = ["project", "test"]

  boot_disk {
    initialize_params {
      size = "${var.gce_boot_disk_size}"
      image = "${var.gce_boot_disk_image}"
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
    preemptible = "${lookup(var.gce_scheduling, "preemptible")}"
    on_host_maintenance = "${lookup(var.gce_scheduling, "on_host_maintenance")}"
    automatic_restart = "${lookup(var.gce_scheduling, "automatic_restart")}"
  }
}
