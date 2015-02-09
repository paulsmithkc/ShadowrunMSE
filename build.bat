rem set 7Z=C:\Program Files\7-Zip
rem set MSE=C:\Program Files (x86)\Magic Set Editor 2
set MSE=%~dp0\mse

xcopy /i /e /s /y "shadowrun.mse-game" "%MSE%\data\shadowrun.mse-game\"
xcopy /i /e /s /y "shadowrun-standard.mse-style" "%MSE%\data\shadowrun-standard.mse-style\"
xcopy /i /e /s /y "shadowrun-spell.mse-style" "%MSE%\data\shadowrun-spell.mse-style\"
"%MSE%\mse.exe" --create-installer shadowrun.mse-installer shadowrun.mse-game shadowrun-standard.mse-style shadowrun-spell.mse-style
"%MSE%\mse.exe" shadowrun.mse-installer
"%MSE%\mse.exe"

timeout 30