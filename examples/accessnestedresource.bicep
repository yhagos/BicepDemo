// Referencing existing Key Vault
resource kv 'Microsoft.KeyVault/vaults@2019-09-01' existing = {
  name: 'kv-contoso'

  resource adminPwd 'secrets' = {
    name: 'admin-password'
    properties: {
      value: 'somesecretvalue'
    }
  }
}

// Operator :: is used to access child resource
output secretId string = kv::adminPwd.id
