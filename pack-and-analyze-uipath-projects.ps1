foreach($package in Get-ChildItem -Path ${{ github.workspace }} -Recurse -Filter project.json -File)
  {
	& "C:\\uipathcli\\lib\\net461\\uipcli.exe" package analyze "$package" --analyzerTraceLevel "Warning" --stopOnRuleViolation
  }