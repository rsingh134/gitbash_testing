 provider "google" {
     credentials = file("SA-Key1.json")
     project     = "development-342105"
     region      = "europe-west4"
     zone        = "europe-west4-a"
}

