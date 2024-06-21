$url = "https://sqlite.org/2024/sqlite-amalgamation-3460000.zip"

Invoke-WebRequest -Uri $url -OutFile sqlite-amalgamation.zip

Expand-Archive -Path ./sqlite-amalgamation.zip -DestinationPath .
