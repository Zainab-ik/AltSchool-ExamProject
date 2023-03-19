terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.26.0"
    }
  }
}
//Use the Digital Provider
provider "digitalocean" {
  token = var.do_token
}
