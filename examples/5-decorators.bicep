//===========================================================================================
// Parameter Decorators:
//  @expression and are placed above the parameter for constratint defitiniton etc.
//===========================================================================================
@secure()
param demoPassword string

@description('Must be at least Standard_A3 to support 2 NICs.')
param virtualMachineSize string = 'Standard_DS1_v2'

@allowed([
  'one'
  'two'
])
param demoEnum string


//=======================================================================
//Resource and Module Decorators:
//========================================================================

@batchSize(3)
resource storageAccountResources 'Microsoft.Storage/storageAccounts@2019-06-01' = [for storageName in storageAccounts: {
  
}]

//======================================================================================
//  White spaces and tabs are ignored when authoring Bicep files.
//  Bicep is newline sensitive. For example:
//======================================================================================

//OK
resource sa 'Microsoft.Storage/storageAccounts@2019-06-01' = if (newOrExisting == 'new') {
  
}

// NOT 
resource sa 'Microsoft.Storage/storageAccounts@2019-06-01' =
    if (newOrExisting == 'new') {
    
    }

//=======================================================================================
//    Comments
//======================================================================================
   // Use // for single-line comments or /* ... */ for multi-line comments
