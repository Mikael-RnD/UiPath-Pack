foreach($project in Get-ChildItem -Path $args[0] -Recurse -Filter project.json -File)
  {
    # Add authentication here
 	& "C:\\uipathcli\\lib\\net461\\uipcli.exe" package pack "$($project.FullName)" -o "$args\output" --autoVersion -l en-US
  }
