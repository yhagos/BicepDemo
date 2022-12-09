
# use to deploy  4-main.bicep
# make sure password is more that 8 Characters

# works Fine
az group create --name rg-demo-001 --location eastus
az deployment group create --resource-group rg-demo-001 --template-file 3-main.bicep  --parameters ./parameters.json  --what-if -w 

az deployment group create --resource-group rg-demo-001 --template-file 3-main.bicep  --parameters ./parameters.json 


# For further information on this topic, I will drop a link in the chat:
        https://docs.microsoft.com/EN-US/azure/azure-resource-manager/bicep/ 

# For any questions please Fcontact me: 
      yonashagos@microsoft.com


