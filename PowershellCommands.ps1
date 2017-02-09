# Connect to Azure RM Account
Login-AzureRmAccount

# Select Azure RM Subscription
Select-AzureRmSubscription -SubscriptionId c2a12a42-0179-404f-ad43-b8690de370fd

# ARM Template Create virtual Network 101-vnet-two-subnets
New-AzureRmResourceGroupDeployment -Name TestVNetDeploxment -ResourceGroupName rg_Arm -TemplateUri https://github.com/Azure/azure-quickstart-templates/blob/master/101-vnet-two-subnets/azuredeploy.json -TemplateParameterFile F:\azuredeploy-parameters.json


# ARM Template SQL Database
New-AzureRmResourceGroupDeployment -Name SQLDatabase -ResourceGroupName rg_Arm -TemplateFile "F:\GitHub\AzureARM\Templates\SQL Database\NewSQLDatabase.json" -TemplateParameterFile "F:\GitHub\AzureARM\Parameters\SQL Database\Parameter-NewSQLDatabase.json"
