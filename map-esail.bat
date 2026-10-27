@echo off
setlocal
set "FOLDER=Roach, Christine's files - 00-OCEN Masters"
set "TARGET=%OneDriveCommercial%\%FOLDER%"

if not defined OneDriveCommercial (
    echo OneDrive for Business is not set up or not signed in on this account.
    pause & exit /b 1
)

if not exist "%TARGET%\" (
    echo Folder not found: "%TARGET%"
    echo Make sure the shortcut was added in OneDrive and has finished syncing.
    pause & exit /b 2
)

subst O: /d >nul 2>&1
subst O: "%TARGET%"
if not exist O:\ (
    echo Could not map O: - the letter may already be in use.
    pause & exit /b 3
)

echo O: is now mapped to 00-OCEN Masters.
timeout /t 5 >nul
endlocal