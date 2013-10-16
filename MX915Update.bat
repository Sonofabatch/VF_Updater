@echo off
:again
cls
echo **********************
echo Verifone MX915 Update
echo **********************
echo Choose one of the following...
echo 1. SHOE SHOW
echo 2. Shoe Dept.
echo 3. Shoe Dept. Encore
echo 4. Shoebilee
echo 5. Burlington Shoes
echo 6. Altier 
echo 7. Quit
choice /c:1234567 /N "Enter Selection: "
if errorlevel 7 goto end
if errorlevel 6 goto chn6
if errorlevel 5 goto chn5
if errorlevel 4 goto chn4
if errorlevel 3 goto chn3
if errorlevel 2 goto chn2
if errorlevel 1 goto chn1
goto again
goto end
:chn1
echo Choose one of the following...
echo 1. COM Port 1 
echo 2. COM Port 2
choice /c:12 /N "Enter Selection: "
if errorlevel 2 goto chn12
if errorlevel 1 goto chn11
goto chn1
goto end
:chn11
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_shoeshowCOM1\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn12
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_shoeshowCOM2\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn2
echo Choose one of the following...
echo 1. COM Port 1 
echo 2. COM Port 2
choice /c:12 /N "Enter Selection: "
if errorlevel 2 goto chn22
if errorlevel 1 goto chn21
goto chn2
goto end
:chn21
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_shoedeptCOM1\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn22
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_shoedeptCOM2\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn3
echo Choose one of the following...
echo 1. COM Port 1 
echo 2. COM Port 2
choice /c:12 /N "Enter Selection: "
if errorlevel 2 goto chn32
if errorlevel 1 goto chn31
goto chn3
goto end
:chn31
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_encoreCOM1\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn32
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_encoreCOM2\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn4
echo Choose one of the following...
echo 1. COM Port 1 
echo 2. COM Port 2
choice /c:12 /N "Enter Selection: "
if errorlevel 2 goto chn42
if errorlevel 1 goto chn41
goto chn4
goto end
:chn41
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_shoebileeCOM1\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn42
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_shoebileeCOM2\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn5
echo Choose one of the following...
echo 1. COM Port 1 
echo 2. COM Port 2
choice /c:12 /N "Enter Selection: "
if errorlevel 2 goto chn52
if errorlevel 1 goto chn51
goto chn5
goto end
:chn51
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_burlingtonCOM1\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn52
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_burlingtonCOM2\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn6
echo Choose one of the following...
echo 1. COM Port 1 
echo 2. COM Port 2
choice /c:12 /N "Enter Selection: "
if errorlevel 2 goto chn62
if errorlevel 1 goto chn61
goto chn6
goto end
:chn61
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_altierCOM1\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:chn62
echo Make sure pinpad is powered up
pause
cd SS_vfQUeverything_20130508A_altierCOM2\vfQueryUpdate
Echo Wait X minutes for update to complete...
VFQueryUpdate.exe
goto end
:end
rem echo end
