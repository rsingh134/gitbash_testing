 provider "google" {
     credentials = file("SA-Key1.json")
     project     = "development-342105"
     region      = "europe-west4"
     zone        = "europe-west4-a"
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
