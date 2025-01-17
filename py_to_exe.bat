
@ECHO OFF


pip --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 'pip' is not installed in your PC
    pause
    exit /b
)


pip show auto-py-to-exe >nul 2>&1
if %errorlevel% neq 0 (
    echo Installing auto-py-to-exe...
    pip install auto-py-to-exe
) 

python -m auto_py_to_exe