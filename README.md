
# use to deploy  4-main.bicep
# make sure password is more that 8 Characters


# az cli

az login
az account list
az account show
az account show -otable
az account set --subscription <name or id>
az account set --subscription fffde5cb-cccc-aaaa-eee-457c3292608e


# works Fine
az group create --name rg-demo-001 --location eastus
az deployment group create --resource-group rg-demo-001 --template-file 3-main.bicep  --parameters ./parameters.json  --what-if -w 
az deployment group create --resource-group rg-demo-001 --template-file 3-main.bicep  --parameters ./parameters.json 

##  
# For further information on this topic, I will drop a link in the chat:
        https://docs.microsoft.com/EN-US/azure/azure-resource-manager/bicep/ 

# For any questions please Fcontact me: 
      yonashagos@microsoft.com


##  PowerShell

Connect-AzAccount 
Login-AzAccount
Get-AzContext
Set-AzContext -SubscriptionId "t666-e251-49ce-a1cd-5c3144"

Connect-AzAccount -UseDeviceAuthentication