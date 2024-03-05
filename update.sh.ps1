echo \" <<'RUN_AS_BATCH' >/dev/null ">NUL "\" \`" <#"
@ECHO OFF
REM LICENSE CLAUSES HERE
REM ----------------------------------------------------------------------------




REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
where /q powershell
if errorlevel 1 (
        echo "ERROR: missing powershell facility."
        exit /b 1
)

copy /Y "%~nx0" "%~n0.ps1" >nul
timeout /t 1 /nobreak >nul
powershell -executionpolicy remotesigned -Command "& '.\%~n0.ps1' %*"
start /b "" cmd /c del "%~f0" & exit /b %errorcode%
REM ############################################################################
REM # Windows BATCH Codes                                                      #
REM ############################################################################
RUN_AS_BATCH
#> | Out-Null




echo \" <<'RUN_AS_POWERSHELL' >/dev/null # " | Out-Null
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
$Source = $PWD
$Destination = "C:\Windows\Fonts"


# Get the list from source files
$___list = Get-ChildItem -Path $Source -Include ('*.ttf', '*.woff', '*.otf', '*.ttc') -Recurse
foreach ($___file in $___list) {
	$___dest = "${Destination}\$($___file.Name)"
	if (-not (Test-Path -Path "${___dest}")) {
		# copy the font file and install in.
		Copy-Item -Path $___file.FullName -Destination "${___dest}"

		# register the font for all users
		New-ItemProperty `
			-Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Fonts" `
			-Name $___file.BaseName `
			-PropertyType String `
			-Value $___file.Name `
			-Force
	}
}
################################################################################
# Windows POWERSHELL Codes                                                     #
################################################################################
exit
<#
RUN_AS_POWERSHELL




################################################################################
# Unix Main Codes                                                              #
################################################################################
1>&2 printf -- "Updating font caches...\n"
fc-cache
################################################################################
# Unix Main Codes                                                              #
################################################################################
exit $?
#>
