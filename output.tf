output "private_dns" {
  description = "List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = module.aws_windows_instance.*.private_dns
}

output "private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = module.aws_windows_instance.*.private_ip
}

output "id" {
  description = "List of IDs of instances"
  value       = module.aws_windows_instance.*.id
}

output "arn" {
  description = "List of ARNs of instances"
  value       = module.aws_windows_instance.*.arn
}

output "availability_zone" {
  description = "List of availability zones of instances"
  value       = module.aws_windows_instance.*.availability_zone
}

output "placement_group" {
  description = "List of placement groups of instances"
  value       = module.aws_windows_instance.*.placement_group
}

output "key_name" {
  description = "List of key names of instances"
  value       = module.aws_windows_instance.*.key_name
}

output "password_data" {
  description = "List of Base-64 encoded encrypted password data for the instance"
  value       = module.aws_windows_instance.*.password_data
}

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, windows is only available if you've enabled DNS hostnames for your VPC"
  value       = module.aws_windows_instance.*.public_dns
}

output "primary_network_interface_id" {
  description = "List of IDs of the primary network interface of instances"
  value       = module.aws_windows_instance.*.primary_network_interface_id
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value       = module.aws_windows_instance.*.security_groups
}

output "vpc_security_group_ids" {
  description = "List of associated security groups of instances, if running in non-default VPC"
  value       = module.aws_windows_instance.*.vpc_security_group_ids
}

output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = module.aws_windows_instance.*.subnet_id
}

output "credit_specification" {
  description = "List of credit specification of instances"
  value       = module.aws_windows_instance.*.credit_specification
}

output "instance_state" {
  description = "List of instance states of instances"
  value       = module.aws_windows_instance.*.instance_state
}

output "root_block_device_volume_ids" {
  description = "List of volume IDs of root block devices of instances"
  value       = module.aws_windows_instance.*.root_block_device_volume_ids
}

output "ebs_block_device_volume_ids" {
  description = "List of volume IDs of EBS block devices of instances"
  value       = module.aws_windows_instance.*.ebs_block_device_volume_ids
}

output "tags" {
  description = "List of tags of instances"
  value       = module.aws_windows_instance.*.tags
}

output "volume_tags" {
  description = "List of tags of volumes of instances"
  value       = module.aws_windows_instance.*.volume_tags
}
