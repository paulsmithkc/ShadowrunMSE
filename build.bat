set 7Z=C:\Program Files\7-Zip
set MSE=C:\Program Files (x86)\Magic Set Editor 2

xcopy /i /e /s /y "shadowrun.mse-game" "%MSE%\data\shadowrun.mse-game\"
xcopy /i /e /s /y "shadowrun-standard.mse-style" "%MSE%\data\shadowrun-standard.mse-style\"
"%MSE%\mse.exe" --create-installer shadowrun.mse-installer shadowrun.mse-game shadowrun-standard.mse-style
"%MSE%\mse.exe" shadowrun.mse-installer

pause