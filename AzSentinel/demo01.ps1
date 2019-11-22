
<#
copy this in aler rule
set triggerThreshold!!
#>

SecurityEvent | where EventID == "4688" | where CommandLine contains "-noni -ep bypass $"

<#
Open Body return
#>
code .\AzSentinel\demo01.json
