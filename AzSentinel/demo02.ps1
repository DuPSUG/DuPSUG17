<#
$Workspace = 'pkmdemo001'
$Workspace = 'pkmdemo002' #Backup for demo
$SubscriptionName = 'Visual Studio Enterprise'
$SubscriptionID = ''

# Enable AZ Sentinel on existing workspace
Set-AzContext -SubscriptionName $SubscriptionName
clear
#>


# Enable AzSentinel
Set-AzSentinel -SubscriptionId $SubscriptionID -WorkspaceName $Workspace
clear


##################################
#Alert rules
<#
# Show JSON file
code .\AzSentinel\alertrules.json

## Import Alert rules
Import-AzSentinelAlertRule -WorkspaceName $Workspace -SettingsFile .\AzSentinel\alertrules.json
clear

## Update Alertrule.json
code .\AzSentinel\alertrules.json

## update alert rule
Import-AzSentinelAlertRule -WorkspaceName $Workspace -SettingsFile .\AzSentinel\alertrules.json
clear

## Get Alert Rules
Get-AzSentinelAlertRule -WorkspaceName $Workspace
clear

## clear all rules
Remove-AzSentinelAlertRule -WorkspaceName $Workspace -RuleName "AlertRule01"
clear
#>

##################################
#Hunting Rule
<#
#Show JSON file
code .\AzSentinel\huntingRules.json

## Import rules
Import-AzSentinelHuntingRule -WorkspaceName $Workspace -SettingsFile .\AzSentinel\huntingRules.json
clear

## Update huntingRules.json
code .\AzSentinel\huntingRules.json

## Import rules
Import-AzSentinelHuntingRule -WorkspaceName $Workspace -SettingsFile .\AzSentinel\huntingRules.json -Confirm:$false -Verbose
clear


## remove all rules
Remove-AzSentinelHuntingRule -WorkspaceName $Workspace -RuleName "HuntingRule01","HuntingRule02" -Confirm:$false
clear
#>
