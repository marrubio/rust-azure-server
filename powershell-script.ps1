$rgName ='rust-server-rg'
$location = 'francecentral'
New-AzResourceGroup -Name $rgName -Location $location

New-AzResourceGroupDeployment `
-ResourceGroupName $rgName `
-TemplateUri "https://raw.githubusercontent.com/marrubio/rust-azure-server/main/rust-server-template.json" `
-TemplateParameterUri "https://raw.githubusercontent.com/marrubio/rust-azure-server/main/rust-server-parameters.json" `
-AsJob