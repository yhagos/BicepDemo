param keyVaultName string = 'kv-contoso'
@secure()
param adminPassword string

// Full type with version
resource adminPwd 'Microsoft.KeyVault/vaults/secrets@2019-09-01' = {
  name: '${keyVaultName}/admin-password'  // Two segments
  properties: {
    value: adminPassword
  }
}
