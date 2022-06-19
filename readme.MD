# azure_update_record_set
Updates a record set of type 'A' in Azure DNS with your public IP address.
Can be used to dynamically updates a 'A' record set in Azure basead in your actual Public IP.
This is usefull for lab environment where your internet does not have a static IP and you have open ports in your modem/router.

# Requirements
## Azure CLI

````
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
````

## Environment Variables
* dns_updater_login
    * Azure account with "DNS Zone Contributor" RBAC.
````
dns_updater_login=joseph@contoso.com 
````
* dns_updater_password
  * Password of the Azure account
````
dns_updater_password=pass1234
````
## Variables

Edit the following variables in the update_A_record_set.ps1 file:

`$resource_group_name` = 'resource group name'  
`$a_record_name` = 'A record name'  
`$zone_name` = 'zone name '