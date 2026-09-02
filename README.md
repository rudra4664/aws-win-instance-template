# aws-win-instance-template
  git clone git@git.nylcloud.com:Cloud-Team/aws-win-instance-template.git
## Windows Server Instance template for starting a Terraform IAC build
    Links for Git for Windows NYL documentation at the bottom.  
    The default setting for os_type is Win2019, only if a 2016 server is needed should it be modified in the TFE portal.  

After creating a GitHub Enterprise repo for your project or application with README.md.  
code ./Create-Repo.PNG
Repo Name: aws-${APPLICATION-OR-PROJECT-NAME}-iac  
You must request access for everyone you want to run the Terraform code in Terraform Enterprise (TFE).  
    https://git.nylcloud.com/pages/Cloud-Team/docs/ptfe.html#authentication-and-authorization  
Git clone the repo down to your workstation and copy the contents of this repo into the folder overwriting the README.md with the file in this repo.  

The source value of the module will refference a specific version: ?ref=v1.1.5  
   source = "git::https://git.nylcloud.com/Cloud-Team/terraform-aws-nyl-win-instance.git?ref=v1.1.5"  

These are the variables that require variables and that their values are added through the TFE (Terraform Enterprise) portal:  
env  --  test, tech, dev/devint, qa/qaint, nonprod, stage, prod  
external_id (check sensitive) *  
role_arn  

The values for external_id and role_arn can be obtained through the AWS portal under IAM, Roles, search ("ptfe-engineer"), click, and select trusted relationships tab, Conditionals Value.  
    Or you can run script Get-IAMRoleIdAndARN.ps1 (Follow directions at top of script.)  

These are the required parameters (variables) to build a windows server:  
instance_type  
root_block_device_volume_size  
ebs_volume_size  

These are the required tags for building an instance in AWS: 
project  
appid  
datatype  
instance_role  
lob (line of business)  
gig_backup  
patch_group  
application  
Name = "${var.lob}-${var.env}-${var.application}-${var.instance_role}-i-${var.instance_id}"  
fqdn = dns record  
ssm_tags = List for Systems Manager State Manager  

## These are the variables needed to create a Windows Instance:  
https://git.nylcloud.com/Cloud-Team/aws-win-instance-template/blob/master/variable.tf  

## Prior to pushing configurations in to production:  
  A CRM needs to be completed and approved.  The TRC, testing documentation needs to be completed, and an IVB  
  will be done by samuel_k_brinley@newyorklife.com, and Venkat_Lokasundaram@newyorklife.com  

### Submit for Access to Terraform Enterprise (TFE)  
  https://git.nylcloud.com/pages/Cloud-Team/docs/ptfe.html#authentication-and-authorization  

### Submit for Access to GitHub Enterprise  
  https://git.nylcloud.com/pages/Cloud-Team/docs/ghe.html#authentication-and-authorization  

### Terraform Training (HashiCorp Learn offers FREE online tutorial for AWS)  
  https://learn.hashicorp.com/collections/terraform/aws-get-started  

### Learning Terraform at NYL Cloud Academy  
  https://nylintranet.newyorklife.com/groups/cloud-academy  
    
  Look for Automation Engineer, then git and Terraform.  

### VisualStudioCode Docs:  
https://code.visualstudio.com/docs  

### Install VisualStudioCode - Download  
  https://code.visualstudio.com/download  

### VSCode Marketplace - Manual Download  
  https://marketplace.visualstudio.com/vscode  

### Download and install PowerShell v7 Windows (x64) .msi  
  https://github.com/PowerShell/PowerShell/releases/download/v7.1.0/PowerShell-7.1.0-win-x64.msi  

### Git for Windows (Install using Defaults)  
  https://gitforwindows.org/  

### SSH authentication to GitHub Enterprise
  https://docs.github.com/en/enterprise-server@2.21/github/authenticating-to-github/connecting-to-github-with-ssh  

  Open Git Bash: ssh-keygen -t ed25519 -C "your_email@example.com"  

### Create directory sturcture for git repos - run:  
  mkdir C:\vsts\IA\terraform && cd C:\vsts\IA\terraform  



### NYL Terraform Standards and Processes  
  https://git.nylcloud.com/pages/Cloud-Team/docs/terraform.html 

### Terraform  
  https://www.terraform.io/  
