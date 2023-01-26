param mypar string = '123'
param location string = 'eastus'

resource mypar_resource 'Microsoft.Compute/virtualMachines@2022-08-01' = {
  name: mypar
  location: location
}


