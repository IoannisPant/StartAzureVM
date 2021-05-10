Set-ExecutionPolicy RemoteSigned

$User = ""
$PWord = ConvertTo-SecureString -String "" -AsPlainText -Force
$tenant = ""
$subscription = ""
$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $User,$PWord

Connect-AzAccount -Credential $Credential -Tenant $tenant -Subscription $subscription

$context = Get-AzSubscription –SubscriptionId $subscription
Set-AzContext $context

Import-Module Az.Compute
Start-AzVM -ResourceGroupName "" -Name ""

Send-MailMessage -To "" -From ""  -Subject "Automated message: Machine started" -Body "The VM is running" -Credential $Credential -SmtpServer ""
exit