

param mypar string = '123'
param location string = 'eastus'



targetScope = 'resourceGroup'


resource myresource 'Microsoft.Compute/virtualMachines@2022-08-01'  = {

  name: mypar
  location: location
}

