# These variables can be supplied from the .envrc file in TF_VAR_xxx environment

#variables.

variable "ibmcloud_api_key" {
  	type = string
  	description = "The IBM Cloud api token"
} 

variable "region" {
  	type = string
  	description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "zone" {
  	type = string
  	description = "The IBM Cloud zone"
}

variable "RESOURCE_PREFIX" {
  	type = string
  	description = "All the resources created by the script will use this prefix. Recommend you set to 'instana' or similar 'abc-instana' "
}

variable "agent_key" {
	type = string
	description = "The agent key value to initialize Instana"
}

variable "sales_id" {
	type = string
	description = "The saled ID value to initialize Instana"
}

variable "ssh_instana_public_key_file"{
  type = string
  description = "The public key file for Instana VM"
}

variable "ssh_instana_private_key_file"{
  type = string
  description = "The private key file for Instana VM"
}

variable "name" {
   type = string
   description = "The name for instana VM to be created"
}