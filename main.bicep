resource storageAccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: 'partoylaunchstorage'
  location: 'southeastasia'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {
  name: 'par-toy-product-launch-plan-starter'
  location: 'southeastasia'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'par-toy-product-launch-1'
  location: 'southeastasia'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
