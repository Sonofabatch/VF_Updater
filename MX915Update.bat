FOR %%A IN (%Date%) DO SET Today=%%A
SET Now=%Time: =0%
SET Hours=%Now:~0,2%
SET Minutes=%Now:~3,2%
ECHO.%Now% | FIND /I "P" >NUL && SET /A Hours += 12
echo **********************
echo Verifone MX915 Update
echo %Today% %Hours%:%Minutes%
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
if errorlevel 6 set store=altier
if errorlevel 5 set store=burlington
if errorlevel 4 set store=shoebilee
if errorlevel 3 set store=encore
if errorlevel 2 set store=shoedept
if errorlevel 1 set store=shoeshow
goto comchoice

:comchoice
echo Choose one of the following...
echo 1. COM Port 1 
echo 2. COM Port 2
echo 3. Go Back
echo 4. Quit
choice /c:1234 /N "Enter Selection: "
if errorlevel 4 goto end
if errorlevel 3 goto again
if errorlevel 2 set comport=2
if errorlevel 1 set comport=1
echo Make sure pinpad is powered up
pause

cd SS_vfQUeverything_20130508A_%store%COM%comport%\vfQueryUpdate
Echo The time is currently %Hours%:%Minutes%
Echo Wait 20-40 minutes for update to complete...
VFQueryUpdate.exe
goto again

:end