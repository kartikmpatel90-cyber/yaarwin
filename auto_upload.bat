@echo off
color 0A
echo ========================================================
echo        YAAR WIN AUTOMATIC WEBSITE UPDATER
echo ========================================================
echo.

:: Configure Git
"C:\Program Files\Git\bin\git.exe" config --global user.name "Kartik"
"C:\Program Files\Git\bin\git.exe" config --global user.email "kartik@example.com"

:: Ensure git is initialized
if not exist .git (
    echo Initializing Git repository...
    "C:\Program Files\Git\bin\git.exe" init
    "C:\Program Files\Git\bin\git.exe" branch -m main
)

:: Automatically set the GitHub URL for Yaar Win
echo Setting up remote connection...
"C:\Program Files\Git\bin\git.exe" remote remove origin 2>nul
"C:\Program Files\Git\bin\git.exe" remote add origin https://github.com/kartikmpatel90-cyber/yaarwin.git

echo.
echo Scanning for new files...
"C:\Program Files\Git\bin\git.exe" add .

echo.
echo Saving updates...
"C:\Program Files\Git\bin\git.exe" commit -m "Upload Yaar Win website"

echo.
echo Uploading to GitHub...
"C:\Program Files\Git\bin\git.exe" push -u origin main --force

echo.
echo ========================================================
echo        UPLOAD COMPLETE!
echo        Your Yaar Win site is now on GitHub.
echo ========================================================
pause
