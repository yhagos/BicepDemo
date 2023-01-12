@minLength(3)
@maxLength(8)
param deploymentPrefix string

@description('Storage Account type')
@allowed([
  'Standard_LRS'
  'Standard_GRS'
  'Standard_ZRS'
  'Premium_LRS'
])
param storageAccountType string = 'Standard_LRS'

@description('Location for all resources.')
param location string = resourceGroup().location

var uniqueSAName = '${deploymentPrefix}-${uniqueString(resourceGroup().id)}'

resource uniqueSA 'Microsoft.Storage/storageAccounts@2019-04-01' = {
  name: uniqueSAName
  location: location
  tags: {
    displayName: 'demo-mystorageaccountdemoLrs'
  }
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {
  }
}