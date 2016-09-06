IF EXIST "C:\Windows\System32\xcopy.exe" (
	ECHO "Start copying files."
	IF EXIST "C:\Users\User\Downloads\software" (
		xcopy "C:\Users\User\Downloads\software" "C:\Users\User\Downloads\backup\software" /s /i /Y
	) ELSE ( 
		ECHO "Directory does not exist."
	)
	IF EXIST "C:\Users\User\VirtualBox VMs\Android" ( 
		xcopy "C:\Users\User\VirtualBox VMs\Android" "C:\Users\User\VirtualBox VMs\backup\Android" /s /i /Y
	) ELSE ( 
		ECHO "Directory does not exist."
	)
	ECHO "Finish copy files."
) ELSE ( 
	ECHO "Unable to find xcopy.exe file."
) 
  
PAUSE



