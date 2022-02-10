foreach($project in Get-ChildItem -Path $args[0] -Recurse -Filter project.json -File)
  {
#	& "C:\\uipathcli\\lib\\net461\\uipcli.exe" package analyze "$project" --analyzerTraceLevel "Warning" --stopOnRuleViolation
	& "C:\\uipathcli\\lib\\net461\\uipcli.exe" package analyze "$project" --analyzerTraceLevel "Warning" --stopOnRuleViolation --orchestratorUrl "$args[1]" --orchestratorTenant $args[2] --orchestratorUsername *** --orchestratorPassword *** --orchestratorFolder "folder_name"
  }
