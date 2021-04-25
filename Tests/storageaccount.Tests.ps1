Param(
    [Parameter(Mandatory = $true)]
    [String]$rgName,
    [Parameter(Mandatory = $true)]
    [String]$storageName
)
Describe 'Compliance'{
    Context 'Storage Account'{
        It "storage account has no public access"{
            $publicaccess = az storage account show -g $rgName -n $storageName --query "allowBlobPublicAccess"
            $publicaccess | Should BeExactly "true"
        }
    } 
}