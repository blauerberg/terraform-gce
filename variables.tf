variable "gcp_credentials" {}
variable "gcp_project" {}
variable "gcp_region" {}
variable "gcp_zone" {}
variable "gce_name" {}
variable "gce_machine_type" {}
variable "gce_boot_disk_image" {}
variable "gce_boot_disk_size" {}
variable "gce_scheduling" {
  type = "map"
  default = {}
}
variable "gce_ssh_user" {}
variable "gce_ssh_public_key_path" {}