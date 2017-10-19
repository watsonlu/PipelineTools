#Param(
#  [Parameter(Mandatory=$True,Position=1)][string]$projectName
#)

$todaysDate = Get-Date -format d

#Get The Latest Unreleased Version
$releaseId = 5
$body = "{ ""id"": ""$($releaseId)"", ""released"": true, ""releaseDate"": ""$($todaysDate)"" }"
#Send the request