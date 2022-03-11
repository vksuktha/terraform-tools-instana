# https://cloud.ibm.com/docs/vpc?topic=solution-tutorials-vpc-public-app-private-backend

# Documentation: https://cloud.ibm.com/docs/ibm-cloud-provider-for-terraform?topic=ibm-cloud-provider-for-terraform-vpc-gen2-resources

module "instana_instance" {
  source = "github.com/vksuktha/instana-terraform-scripts?ref=v1.0.2"

  name                 = var.name
  RESOURCE_PREFIX      = var.RESOURCE_PREFIX
  ibmcloud_api_key     = var.ibmcloud_api_key
  region               = var.region
  zone                 = var.zone
  sales_id             = var.sales_id
  agent_key            = var.agent_key
  ssh_instana_public_key_file = var.ssh_instana_public_key_file
  ssh_instana_private_key_file = var.ssh_instana_private_key_file
}

