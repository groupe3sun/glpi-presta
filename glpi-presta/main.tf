variable "ssh_host_presta" {}
variable "ssh_user_presta" {}
variable "ssh_key_presta" {}
variable "ssh_host_glpi" {}
variable "ssh_user_glpi" {}
variable "ssh_key_glpi" {}

module "pretashop" {
  source        = "./modules/prestashop"
  ssh_host_presta       = var.ssh_host_presta
  ssh_user_presta       = var.ssh_user_presta
  ssh_key_presta        = var.ssh_key_presta
}
module "glpi" {
  source        = "./modules/glpi"
  ssh_host_glpi         = var.ssh_host_glpi
  ssh_user_glpi         = var.ssh_user_glpi
  ssh_key_glpi          = var.ssh_key_glpi
}

