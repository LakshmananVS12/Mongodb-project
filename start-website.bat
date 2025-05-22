@echo off
echo Starting Fitness Tracker Website...

:: Check if MongoDB is running
sc query MongoDB > nul
if errorlevel 1 (
    echo MongoDB is not running as a service. Attempting to start it...
    net start MongoDB
    if errorlevel 1 (
        echo Failed to start MongoDB service. Please start MongoDB manually.
        pause
        exit /b 1
    )
) else (
    echo MongoDB is already running.
)

:: Start Backend Server
cd backend
start cmd /k npm run dev

:: Wait for backend to start
timeout /t 5

:: Start Frontend Server
cd ..\obsidian-purple-gains-tracker-main
start cmd /k npm run dev

:: Wait for frontend to start
timeout /t 5

echo Website is starting up...
echo Backend: http://localhost:5000
echo Frontend: http://localhost:5173
echo.
echo Press any key to close this window...
pause >nul 