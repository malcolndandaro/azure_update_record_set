# Variables to reference the A record set in Azure DNS
$resource_group_name = 'rg-placeholder'
$a_record_name = 'server-placeholder'
$zone_name = 'contoso.com'
# Env Variables with login and password of a Azure account with "DNS Zone Contributor" RBAC Permission
$dns_updater_login = $Env:dns_updater_login
$dns_updater_password = $Env:dns_updater_password

# Gets the current internet Public IP
$public_ip = (Invoke-WebRequest -uri "http://ifconfig.me/ip").Content

# Logins in Azure and Updates the record set.
az login -u $dns_updater_login -p $dns_updater_password
az network dns record-set a update -g $resource_group_name -n $a_record_name -z $zone_name --set aRecords[0].ipv4Address=$public_ip
