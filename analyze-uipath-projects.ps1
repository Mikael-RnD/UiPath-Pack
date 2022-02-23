$projectList = Get-ChildItem -Path $args[0] -Recurse -Filter project.json -File
Write-Host "Number of projects in ""$($args[0])"":" $projectList.Count
if($projectList.Count -gt 0)
{
  foreach($project in $projectList)
    {
      echo $($project.FullName)
      # Get some data from the package.json for package naming
      $json = Get-Content "$($project.FullName)" | Out-String | ConvertFrom-Json
      $foo = $json.projectVersion
      $Name=$json.name
      echo $foo
      echo "Analyzing " $Name
    & "C:\\uipathcli\\lib\\net461\\uipcli.exe" package analyze "$($project.FullName)" --analyzerTraceLevel "Warning" --stopOnRuleViolation
  #	& "C:\\uipathcli\\lib\\net461\\uipcli.exe" package analyze "$project" --analyzerTraceLevel "Warning" --stopOnRuleViolation --orchestratorUrl $args[1] --orchestratorTenant $args[2] --orchestratorUsername $args[3] --orchestratorPassword $args[4] --orchestratorFolder $args[5]
    }
}
else
{
  echo "Found no UiPath projects in $($args[0])"
  return 1;
}
