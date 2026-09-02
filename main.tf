provider "aws" {
    region = var.region
    assume_role {
        role_arn     = var.role_arn
        external_id  = var.external_id
    }
}

module "aws_windows_instance" {
    source = "git::https://git.nylcloud.com/Cloud-Team/terraform-aws-nyl-win-instance.git?ref=v1.1.6"
    instance_id                       = var.instance_id
    vpc_id                            = data.aws_vpc.vpc.id
    subnet_id                         = data.aws_subnet.subnet.id
    security_group_ids                = [data.aws_security_group.sg.id, data.aws_security_group.default.id]
    name_regex                        = local.ami_name_regex
    kms_key_id                        = replace(data.aws_kms_alias.kms_alias.arn, data.aws_kms_alias.kms_alias.name, "key/${data.aws_kms_alias.kms_alias.target_key_id}")
    ami_id                            = data.aws_ami.windows_ami.id
    root_block_device_volume_type     = var.root_block_device_volume_type
    root_block_device_volume_size     = var.root_block_device_volume_size
    ebs_volume_type                   = var.ebs_volume_type
    ebs_volume_size                   = var.ebs_volume_size
    ebs_device_name                   = var.ebs_device_name
    iam_instance_profile_name         = local.iam_instance_profile_name
    instance_type                     = var.instance_type
    os_type                           = var.os_type
    tenancy                           = var.tenancy
    lob                               = var.lob
    env                               = var.env
    cloud_provider                    = var.cloud_provider
    project                           = var.project
    application                       = var.application
    appid                             = var.appid
    datatype                          = var.datatype
    gig_backup                        = var.gig_backup
    patch_group                       = var.patch_group
    instance_role                     = var.instance_role
    fqdn                              = var.fqdn
    user_data                         = data.template_file.ssm_document.rendered
    ssm_tags                          = var.ssm_tags
}
