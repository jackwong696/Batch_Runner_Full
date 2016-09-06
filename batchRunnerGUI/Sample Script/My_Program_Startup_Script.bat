IF EXIST "C:\Program Files (x86)\Opera\launcher.exe" (
	ECHO "Starting Opera Browser."
	START "" "C:\Program Files (x86)\Opera\launcher.exe"  
) ELSE (
	ECHO "Opera browser does not exist." 
)

IF EXIST "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" (
	ECHO "Starting Chrome Browser."
	START "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" 
) ELSE (
	ECHO "Chrome browser does not exist."
)

IF EXIST "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" (
	ECHO "Starting Firefox Browser."
	START "" "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
) ELSE (
	ECHO "Firefox browser does not exist."
)
PAUSE

