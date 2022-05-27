# Enter the tenant's that you wish to enroll credentials.
if (Get-command *AzAccount* -Module *Az*) {
  Connect-AzAccount
} else {
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
  Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force
  Connect-AzAccount
}

# Deploy Azure Resource Manager template that is located externally
New-AzSubscriptionDeployment -Name st-lighthouse `
                 -Location WestUS2 `
                 -TemplateUri https://raw.githubusercontent.com/xlshineatek/lighthouse/main/template.json `
                 -Verbose