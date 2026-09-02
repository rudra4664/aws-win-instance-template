##  https://git.nylcloud.com/pages/Cloud-Team/docs/ptfe.html
##  support@hashicorp.com
## This file must contain Option 2: Add a profile to your AWS credentials file
#  https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html?icmpid=docs_sso_user_portal

[CmdletBinding()]
param (
    [string]$Platform = 'compute',
    [string]$Env = 'test',
    [string]$ProfileName = '89898989898997_Engineer',
    [string]$Region = 'us-east-1'
)

    $RoleName = 'nyl-' + $Platform + '-' + $Env + '-ptfe-engineer-role'
    Write-Verbose -Message "`$RoleName : $RoleName"
    Write-Verbose -Message "`$ProfileName : $ProfileName"
    Write-Verbose -Message "`$Env : $Env"
    Write-Verbose -Message "`$Region : $Region"

    $ModuleName = 'AWSPowerShell.NetCore'
    if ( -not (Get-Module -Name $ModuleName) ) {
        if ( -not (Get-Module -Name $ModuleName -ListAvailable) ) {
            Install-Module -Name $ModuleName -Scope AllUsers -Force -AllowClobber
            Import-Module -Name $ModuleName
        }
        else {
            Import-Module -Name $ModuleName
        }
    }


$IAMObj = Get-IAMRole -ProfileName $ProfileName -RoleName $RoleName -Region $Region
$IAMObj | Format-List -Property RoleName,ARN,RoleId
