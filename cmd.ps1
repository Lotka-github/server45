Get-ChildItem -Path "C:\Drive\git\server45\repository\sofiles" -Include *.* -File -Recurse | foreach { $_.Delete()}
Copy-Item -Path "C:\Drive\Projects\AndroidStudio\oktapus\app\build\intermediates\cmake\debug\obj\" -Destination "C:\Drive\git\server45\repository\sofiles" -Recurse -force
git add .
git commit -m "from cmd"
git push -u origin gh-pages
git push -u origin gh-pages
pause