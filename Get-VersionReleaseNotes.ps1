#Param(
#  [Parameter(Mandatory=$True,Position=1)][string]$projectName
#)

# Replace with jira call
[string]$content = Get-Content "out.json"
$json = ConvertFrom-Json $content
$ReleaseNotes = ""
foreach ($issue in $json.issues)
{
    $ReleaseNotes = $ReleaseNotes + "$($issue.key) - $($issue.fields.summary) - Reporter:  $($issue.fields.reporter.DisplayName)`r`n"
}

Set-OctopusVariable -name "PlainReleaseNotes" -value $ReleaseNotes