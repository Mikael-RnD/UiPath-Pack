New-Item -Path "C:\\" -ItemType "directory" -Name "uipathcli";
Invoke-WebRequest "https://www.myget.org/F/uipath-dev/api/v2/package/UiPath.CLI/1.0.7985.19721" -OutFile "C:\\uipathcli\\cli.zip";
Expand-Archive -LiteralPath "C:\\uipathcli\\cli.Zip" -DestinationPath "C:\\uipathcli";