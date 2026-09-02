
variable "custom_tags" {
  description = "A map of Custom tags"
  type        = map(any)
  default     = {
  }
}

variable "instance_type" {
  description = "This is the sizing of the instance, example t2.medium"
  type        = string
  default     = "t2.small"
}

variable "root_block_device_volume_size" {
  description = "Size in GB - 75 GB is the default for on-prem servers."
  type        = number
  default     = 75
}

variable "ebs_volume_size" {
  description = "Volume size in GB.  If size is zero, no ebs_volume will be added."
  type        = number
  default     = 0
}

variable "ssm_tags" {
  description = "This will include a list of tags used by Systems Manager state managment.  Add tags for filtering instances for specific configurations."
  type        = string
  default     = "all"
}

### TAGS ###
variable "lob" {
  description = "This tag should now be a reference to the name of your given application.  (cloudsec Cloud Security Edge, corptech Corporate Technology, direct Direct Insurance, ecs Enterprise Compute Services, eis Enterprise Integration Services, insure Insurance, invest Investment)"
  type        = string
  default     = ""
}

variable "project" {
  description = "The free form name or reference of the NYL project the resource is part of."
  type        = string
  default     = ""
}

variable "appid" {
  description = "AppID is created as part of EAB.  The NYL application Id. This is used to align technology assets to the business, assist with operational activities, and allocate spend to cost centers."
  type        = string
  default     = ""
}

variable "datatype" {
  description = "The type of data that the resource / application is processing."
  type        = string
  default     = ""
}

variable "instance_role" {
  description = "app Appserver, compute Compute Resource, db Database, directory Directory Resource, monitor Governance Monitor, web Webserver"
  type        = string
  default     = ""
}

variable "gig_backup" {
  description = "Used by CloudAware to backup resources."
  type        = string
  default     = "0d-0w-0m"
}

variable "patch_group" {
  description = "Identifies schedule that EC2 instance will receive security patches."
  type        = string
  default     = "Thur_04"
}

variable "application" {
  description = "Name of the component that the resource is provisioned for, free form. (lower case, no spaces, added dashes)"
  type        = string
  default     = ""
}

#######  Modify or add to TFE portal  ########
variable "env" {
  description = "Environment - This must be addes as a variable in TFE portal."
  type        = string
}

variable "role_arn" {
  description = "This is the AMI assigned for access control between Terraform Enterprise and NYL AWS. (tfe variable)" 
  type        = string
}

variable "external_id" {
  description = "Grab this from the IAM console - KEY ID (tfe variable)"
  type        = string
}

#########  seldom changed  ###########
variable "os_type" {
  description = "Options for Windows Servers are Windows2019, or Windows2016"
  type        = string
  default     = "Windows2019"
}

variable "instance_id" {
  description = "The ID (count) of the instance"
  type        = string
  default     = "0"
}

variable "region" {
  description = "Datacenter region"
  type        = string
  default     = "us-east-1"
}

variable "cloud_provider" {
  description = "aws Amazon Web Services, azure Microsoft Azure, gcp Google Cloud Platform, cnj Clinton NJ, adc Atlanta Data Center, tpa NYL Direct - Tampa"
  type        = string
  default     = "aws"
}

variable "root_block_device_volume_type" {
  description = " (Optional) The type of EBS volume. Can be standard, gp2, io1, io2, sc1 or st1 (Default: gp2)."
  type        = string
  default     = "gp2"
}

variable "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Available values: default, dedicated, host."
  type        = string
  default     = "default"
}

variable "ebs_volume_type" {
  description = "The type of volume. Can be standard, gp2, io1 or io2. (Default: gp2)."
  type        = string
  default     = "gp2"
}

variable "ebs_device_name" {
  description = "xvd[f-z]*"
  type        = string
  default     = "xvdh"
}

