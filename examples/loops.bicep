param keyVaultCount int = 2    // Number of Key Vaults to create

resource kvs 'Microsoft.KeyVault/vaults@2019-09-01' = [for i in range(0, keyVaultCount): {
  name: 'kv-contoso-${i}'
  // Other Key Vault properties are ommitted
}]

resource secrets 'Microsoft.KeyVault/vaults/secrets@2019-09-01' = [for i in range(0, keyVaultCount): {
  name: 'secret${i}'
  parent: kvs[i]    // kvs is an array of resources, getting i-th element
  properties: {
    value: 'somesecretvalue${i}'
  }
}]
