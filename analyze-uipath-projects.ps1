foreach($project in Get-ChildItem -Path $workspace -Recurse -Filter project.json -File)
  {
#	& "C:\\uipathcli\\lib\\net461\\uipcli.exe" package analyze "$project" --analyzerTraceLevel "Warning" --stopOnRuleViolation
	& "C:\\uipathcli\\lib\\net461\\uipcli.exe" package analyze "$project" --analyzerTraceLevel "Warning" --stopOnRuleViolation --orchestratorUrl "$url" --orchestratorTenant $tenant --orchestratorUsername *** --orchestratorPassword *** --orchestratorFolder "folder_name"
  }
