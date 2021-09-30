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

variable "resource_prefix" {
  	type = string
  	description = "All the resources created by the script will use this prefix. Recommend you set to 'instana' or similar 'abc-instana' "
}

variable "resource_group_name" {
  	type = string 
   	description = "The name of the resource group in which Instana VM and ssh-key need to be created."
}

variable "vpc_name" {
    type = string
    description = "The name of the VPC where Instana VM has to be created"
}

variable "subnet_name" {
	type = string 
	description = "The name of the subnet where Instana VM has be created. Make sure this subnet has Public gateway, so that Instna can be accesssible."
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
