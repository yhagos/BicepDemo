resource mystorageaccountdemoLrs 'Microsoft.Storage/storageAccounts@2019-04-01' = {
  name: 'mystorageaccountdemoLrs'
  location: 'eastus'
  tags: {
    displayName: 'demo-mystorageaccountdemoLrs'
  }
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
  }
}