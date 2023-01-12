
param shouldDeploy bool = true

param keyVaultName string = 'kv-bicepdemo-yhcond'
@secure()
param adminPassword string
param location string = 'eastus'
param tenantid string = '72f988bf-86f1-41af-91ab-2d7cd011db47'
param objectid string = '748f4c49-03e3-44e5-8ca8-03a4e3f4445a'

resource kv 'Microsoft.KeyVault/vaults@2022-07-01' = if (shouldDeploy) {
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
        permissions: {
          secrets: [ 'list' ]
        }
      }
    ]
  }

  resource adminPwd 'secrets' = {
    name: 'admin-password' // Only one segment
    properties: {
      value: adminPassword
    }
  }

}

// Outside Parent With "parent" Property
// Condition "shouldDeploy" won't be applied
resource secret2 'Microsoft.KeyVault/vaults/secrets@2022-07-01' = {
  name: 'secret2'
  parent: kv
  properties: {
    value: 'somesecretvalue2'
  }
}

// Outside Parent Without "parent" Property
// Condition "shouldDeploy" won't be applied
resource secret3 'Microsoft.KeyVault/vaults/secrets@2022-07-01' = {
  name: 'secret3'
  parent: kv
  properties: {
    value: 'somesecretvalue3'
  }
}


// README
// az deployment group create --resource-group rg-kv-001 --template-file 4-conditional.bicep  --what-if -w
// az deployment group create --resource-group rg-kv-001 --template-file 4-conditional.bicep
