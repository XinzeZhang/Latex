@echo off
rem LaTeX package install script
rem Author: Xu Cheng

cd /d "%~dp0"
cd ..

if not defined TEXMFLOCAL (
    for /f "delims=" %%I in ('kpsewhich --var-value=TEXMFLOCAL') do @set TEXMFLOCAL=%%I
)

if /i "%1" == "install"      goto :install
if /i "%1" == "uninstall"    goto :uninstall
goto :help

:install
echo. Install hustreport.cls template into local.
mkdir "%TEXMFLOCAL%\tex\latex\hustreport\"
xcopy /q /y .\hustreport\hustreport.cls "%TEXMFLOCAL%\tex\latex\hustreport\" > nul
xcopy /q /y .\hustreport\hust-title.eps "%TEXMFLOCAL%\tex\latex\hustreport\" > nul
xcopy /q /y .\hustreport\hust-title.pdf "%TEXMFLOCAL%\tex\latex\hustreport\" > nul
mkdir "%TEXMFLOCAL%\doc\latex\hustreport\"
xcopy /q /y .\hustreport\hustreport.pdf "%TEXMFLOCAL%\doc\latex\hustreport\" > nul
mkdir "%TEXMFLOCAL%\doc\latex\hustreport\example\"
xcopy /q /y .\hustreport\hustreport-zh-example.pdf "%TEXMFLOCAL%\doc\latex\hustreport\example\" > nul
xcopy /q /y .\hustreport\hustreport-zh-example.tex "%TEXMFLOCAL%\doc\latex\hustreport\example\" > nul
xcopy /q /y .\hustreport\hustreport-en-example.pdf "%TEXMFLOCAL%\doc\latex\hustreport\example\" > nul
xcopy /q /y .\hustreport\hustreport-en-example.tex "%TEXMFLOCAL%\doc\latex\hustreport\example\" > nul
xcopy /q /y .\hustreport\fig-example.pdf "%TEXMFLOCAL%\doc\latex\hustreport\example\" > nul
xcopy /q /y .\hustreport\ref-example.bib "%TEXMFLOCAL%\doc\latex\hustreport\example\" > nul
goto :hash

:uninstall
echo. Uninstall hustreport.cls template.
rd /q /s "%TEXMFLOCAL%\tex\latex\hustreport\"
rd /q /s "%TEXMFLOCAL%\doc\latex\hustreport\"
goto :hash

:hash
echo. Refresh TeX hash database.
texhash
goto :exit

:help
echo Usage:
echo. %~nx0 install          - install hustreport.cls template into local.
echo. %~nx0 uninstall        - uninstall hustreport.cls template.
echo.
goto :exit

:exit