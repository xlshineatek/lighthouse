# Enter the tenant's that you wish to enroll credentials.
Connect-AzAccount

# Deploy Azure Resource Manager template that is located externally
New-AzSubscriptionDeployment -Name st-lighthouse `
                 -Location WestUS2 `
                 -TemplateUri https://raw.githubusercontent.com/xlshineatek/lighthouse/main/template.json `
                 -Verbose