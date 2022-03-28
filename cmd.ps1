echo " start replacing file"
Get-ChildItem -Path "C:\Drive\git\server45\repository\sofiles" -Include *.* -File -Recurse | foreach { $_.Delete()}
echo " files removed"
Copy-Item -Path "C:\Drive\Projects\AndroidStudio\oktapus\app\build\intermediates\cmake\debug\obj\" -Destination "C:\Drive\git\server45\repository\sofiles" -Recurse -force
echo " files copied !"
echo " initializing server"
echo " uploading to server"
git add .
git commit -m "from cmd"
git push -u origin gh-pages
echo " uploaded"
echo "`n"
echo "checking again ..."
echo "`n"
git push -u origin gh-pages
git status
echo " operation completed"
pause