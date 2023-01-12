param keyVaultName string = 'kv-contoso'
param shouldDeploy bool = true

resource kv 'Microsoft.KeyVault/vaults@2019-09-01' = if (shouldDeploy) {
  name: keyVaultName
  // Other Key Vault properties are ommitted

  // Within Parent Resource
  // Condition "shouldDeploy" will be applied
  resource secret1 'secrets' = {
    name: 'secret1'
    properties: {
      value: 'somesecretvalue1'
    }
  }
}

// Outside Parent With "parent" Property
// Condition "shouldDeploy" won't be applied
resource secret2 'Microsoft.KeyVault/vaults/secrets@2019-09-01' = {
  name: 'secret2'
  parent: kv
  properties: {
    value: 'somesecretvalue2'
  }
}

// Outside Parent Without "parent" Property
// Condition "shouldDeploy" won't be applied
resource secret3 'Microsoft.KeyVault/vaults/secrets@2019-09-01' = {
  name: '${keyVaultName}/secret3'
  properties: {
    value: 'somesecretvalue3'
  }
}
