param name string = 'mykeyvalut123'
param location string ='eastus'
param tenantid string = '019191'


resource kvs 'Microsoft.KeyVault/vaults@2022-07-01'  = {
  name: name
  location:location
  properties: {
    sku: {
      family:'A'
      name:'premium'
    }
    tenantId: tenantid
  }
}

 output myout string = kvs.id
