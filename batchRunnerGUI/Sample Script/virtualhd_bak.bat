@REM if exist "D:\virtualOS\Android_Test_Root\Android_Test_Root.vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\Android_Test_Root\Android_Test_Root.rar" "D:\virtualOS\Android_Test_Root\Android_Test_Root.vdi"    
@REM if exist "D:\virtualOS\Ubuntu\Ubuntu.vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\Ubuntu\Ubuntu.rar" "D:\virtualOS\Ubuntu\Ubuntu.vdi"    
@REM if exist "D:\virtualOS\android\Android.vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\android\Android.rar" "D:\virtualOS\android\Android.vdi"     
@REM if exist "D:\virtualOS\Ubuntu Precise 12.04 (64 bit)\Ubuntu Precise 12.04 (64 bit).vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\Ubuntu Precise 12.04 (64 bit)\Ubuntu Precise 12.04 (64 bit).rar" "D:\virtualOS\Ubuntu Precise 12.04 (64 bit)\Ubuntu Precise 12.04 (64 bit).vdi"    
@REM if exist "D:\virtualOS\Ubuntu Precise 12.04 (64 bit) Tomcat\Ubuntu Precise 12.04 (64 bit) Tomcat.vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\Ubuntu Precise 12.04 (64 bit) Tomcat\Ubuntu Precise 12.04 (64 bit) Tomcat.rar" "D:\virtualOS\Ubuntu Precise 12.04 (64 bit) Tomcat\Ubuntu Precise 12.04 (64 bit) Tomcat.vdi"    
@REM if exist "D:\virtualOS\windows_7\windows_7.vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\windows_7\windows_7.rar" "D:\virtualOS\windows_7\windows_7.vdi"     
@REM if exist "D:\virtualOS\windows7_LTP\windows7_LTP.vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\windows7_LTP\windows7_LTP.rar" "D:\virtualOS\windows7_LTP\windows7_LTP.vdi"    
@REM if exist "D:\virtualOS\xubuntu\Xubuntu_1.vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\xubuntu\Xubuntu_1.rar" "D:\virtualOS\xubuntu\Xubuntu_1.vdi"    
@REM if exist "D:\virtualOS\Solaris\Solaris.vdi" "C:\Program Files\WinRAR\WinRAR" a "D:\virtualOS\Solaris\Solaris.rar" "D:\virtualOS\Solaris\Solaris.vdi"

IF EXIST "C:\Users\User\VirtualBox VMs\Android" (
	ECHO "Start to backup files."
	IF EXIST "C:\Users\User\VirtualBox VMs\Android\Android.7z" (
		"C:\Program Files (x86)\7-Zip\7z.exe" u "C:\Users\User\VirtualBox VMs\Android\Android.7z" "C:\Users\User\VirtualBox VMs\Android\Android.vdi" 
	) ELSE (
		"C:\Program Files (x86)\7-Zip\7z.exe" a "C:\Users\User\VirtualBox VMs\Android\Android.7z" "C:\Users\User\VirtualBox VMs\Android\Android.vdi" 
	)
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."
)

GOTO END
IF EXIST "D:\virtualOS\Ubuntu\Ubuntu.vdi" (
	ECHO "Start to backup files."
	"C:\Program Files (x86)\7-Zip\7z" a "D:\virtualOS\Ubuntu\Ubuntu.7z" "D:\virtualOS\Ubuntu\Ubuntu.vdi"    
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."
)

IF EXIST "D:\virtualOS\android\Android.vdi" (
	ECHO "Start to bakcup files."
	"C:\Program Files (x86)\7-Zip\7z" a "D:\virtualOS\android\Android.7z" "D:\virtualOS\android\Android.vdi"     
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."
)

IF EXIST "D:\virtualOS\Ubuntu Precise 12.04 (64 bit)\Ubuntu Precise 12.04 (64 bit).vdi" (
	ECHO "Start to bakcup files."
	"C:\Program Files (x86)\7-Zip\7z" a "D:\virtualOS\Ubuntu Precise 12.04 (64 bit)\Ubuntu Precise 12.04 (64 bit).7z" "D:\virtualOS\Ubuntu Precise 12.04 (64 bit)\Ubuntu Precise 12.04 (64 bit).vdi"    
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."
)
	
IF EXIST "D:\virtualOS\Ubuntu Precise 12.04 (64 bit) Tomcat\Ubuntu Precise 12.04 (64 bit) Tomcat.vdi" (
	ECHO "Start to bakcup files."
	"C:\Program Files (x86)\7-Zip\7z" a "D:\virtualOS\Ubuntu Precise 12.04 (64 bit) Tomcat\Ubuntu Precise 12.04 (64 bit) Tomcat.7z" "D:\virtualOS\Ubuntu Precise 12.04 (64 bit) Tomcat\Ubuntu Precise 12.04 (64 bit) Tomcat.vdi"    
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."	
)
	
IF EXIST "D:\virtualOS\windows_7\windows_7.vdi" (
	ECHO "Start to bakcup files."
	"C:\Program Files (x86)\7-Zip\7z" a "D:\virtualOS\windows_7\windows_7.7z" "D:\virtualOS\windows_7\windows_7.vdi"  
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."	
)	

IF EXIST "D:\virtualOS\windows7_LTP\windows7_LTP.vdi" (
	ECHO "Start to bakcup files."
	"C:\Program Files (x86)\7-Zip\7z" a "D:\virtualOS\windows7_LTP\windows7_LTP.7z" "D:\virtualOS\windows7_LTP\windows7_LTP.vdi"    
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."	
)

IF EXIST "D:\virtualOS\xubuntu\Xubuntu_1.vdi" (
	ECHO "Start to bakcup files."
	"C:\Program Files (x86)\7-Zip\7z" a "D:\virtualOS\xubuntu\Xubuntu_1.7z" "D:\virtualOS\xubuntu\Xubuntu_1.vdi"    
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."	
)
	
IF EXIST "D:\virtualOS\Solaris\Solaris.vdi" (
	ECHO "Start to bakcup files."	
	"C:\Program Files (x86)\7-Zip\7z" a "D:\virtualOS\Solaris\Solaris.7z" "D:\virtualOS\Solaris\Solaris.vdi" 
	ECHO "Finish."
) ELSE (
	ECHO "Backup files does not exist."	
)
: END

PAUSE
