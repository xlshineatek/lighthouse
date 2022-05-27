# What is this?
This is Shineatek Corp's Azure Lighthouse template. Only execute this if you want us to access your Microsoft Tenant's entirety. 

# MSP Prerequisites
To enable this specific configuration of this template, the tenant must have an [Azure eligible authorization license](https://docs.microsoft.com/en-us/azure/lighthouse/how-to/create-eligible-authorizations) (nterprise Mobility + Security E5 (EMS E5) or Azure AD Premium P2 license).

This is needed to limit the access of the users trying to access a tenant for Zero Trust. 

# Execution
To begin with our offering, perform these steps:

1. In PowerShell, run: 

```IEX(New-Object Net.WebClient).downloadString('https://raw.githubusercontent.com/xlshineatek/lighthouse/main/run.ps1')```

2. Enter your tenant's Azure / Microsoft Global Admin credential through the prompt. 
