echo " start replacing file"
Get-ChildItem -Path "C:\Drive\git\server45\repository\sofiles" -Include *.* -File -Recurse | foreach { $_.Delete()}
Start-Sleep -s 1
echo " files removed"
Copy-Item -Path "C:\Drive\Projects\AndroidStudio\oktapus\app\build\intermediates\cmake\debug\obj\" -Destination "C:\Drive\git\server45\repository\sofiles" -Recurse -force
Start-Sleep -s 1
echo " files copied !"
Start-Sleep -s 0.5
echo " initializing server"
Start-Sleep -s 0.5
echo " uploading to server`n`n"
Start-Sleep -s 0.5
git add .
git commit -m "from cmd"
git push -u origin gh-pages
echo " uploaded"
Start-Sleep -s 0.5
echo "`n`n checking server ... `n`n"
git push -u origin gh-pages
echo "`n getting status ... `n"
git status
echo " operation completed `n`n"
pause