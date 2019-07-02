<#
 EDITOR  : Jones, J.
 CREATED : 2018.02
 UPDATED : 2018.02
 COMMENT : Search EES Mailbox per KDE guidelines
#>

Set-ExecutionPolicy -ExecutionPolicy unrestricted

Import-PSSession (New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell/ -Credential (Get-Credential) -Authentication Basic -AllowRedirection)

Search-Mailbox -Identity user@test.net -TargetMailbox admin@test.net -TargetFolder SearchInvestigation -SearchQuery “sample data” -LogLevel full

Remove-PSSession (Get-PSSession | Where-Object {$_.ConfigurationName -eq "Microsoft.Exchange"})