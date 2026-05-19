@echo off
set "filename=hosts_blocker_data.json"

:: Check if the file already exists
if not exist "%filename%" (
    :: Create the file and write the JSON data
    (
        echo {
        echo   "blocked": [],
        echo   "enabled": false,
        echo   "attempts": 0,
        echo   "last_attempt_date": "2026-05-16"
        echo }
    ) > "%filename%"
    echo File created successfully.
) else (
    echo File already exists. Skipping.
)
