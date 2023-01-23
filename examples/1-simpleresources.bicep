param keyVaultName string = 'kv-bicepdemo-yonashagos1'
@secure()
param adminPassword string
param location string = 'eastus'
param tenantid string = '72f988bf-86f1-41af-91ab-2d7cd011db47'
param objectid string = '748f4c49-03e3-44e5-8ca8-03a4e3f4445a'

resource kv 'Microsoft.KeyVault/vaults@2022-07-01' =  {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: tenantid
    accessPolicies: [
      {
        objectId: objectid
        tenantId: tenantid
        permissions:{
          secrets:['list']         
        }
      }
    ]
  }
}


resource adminPwd 'Microsoft.KeyVault/vaults/secrets@2022-07-01' = {
  name: 'admin-password'   // Only one segment
  parent: kv               // Link to parent resource
  properties: {
    value: adminPassword
  }
}


output secretId string = adminPwd.id

// README
// az deployment group create --resource-group rg-kv-001 --template-file 1-simpleresources.bicep  --what-if -w
// az deployment group create --resource-group rg-kv-001 --template-file 1-simpleresources.bicep

