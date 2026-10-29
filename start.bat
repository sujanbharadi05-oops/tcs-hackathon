@echo off
title AI QA COPILOT - Launcher
color 0B
echo =====================================================================
echo       AI QA COPILOT - Intelligent Test Case Generator
echo              TCS Technology Day Hackathon Edition
echo =====================================================================
echo.
echo [1/2] Starting Python FastAPI Backend on http://localhost:8000 ...
start "AI QA Copilot Backend (FastAPI)" cmd /k "cd /d %~dp0backend && python -m uvicorn main:app --host 127.0.0.1 --port 8000 --reload"

echo [2/2] Starting Vite Frontend on http://localhost:5173 ...
timeout /t 2 /nobreak > nul
start "AI QA Copilot Frontend (Vite)" cmd /k "cd /d %~dp0frontend && npm.cmd run dev"

echo.
echo =====================================================================
echo Application is starting!
echo Frontend: http://localhost:5173
echo Backend API: http://localhost:8000
echo Backend Docs: http://localhost:8000/docs
echo =====================================================================
echo.
timeout /t 3 /nobreak > nul
start http://localhost:5173
