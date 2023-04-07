dotnet sonarscanner begin /k:"GoColis" /d:sonar.host.url="http://localhost:9000"  /d:sonar.token="sqp_2c816c3c0004d4a55d4a0161e56daac810744553"
dotnet build
dotnet sonarscanner end /d:sonar.token="sqp_2c816c3c0004d4a55d4a0161e56daac810744553"
pause
Mns@252017