# for oxtapus project
# mobin jafari 27/12/1401

# cd to project distination 
cd "C:\Drive\Projects\AndroidStudio\oktapus" 
.\gradlew.bat clean
.\gradlew.bat build

#cd to server distination
cd "C:\Drive\git\server45"
echo " start replacing file ..."

# elemenating old files
Get-ChildItem -Path "C:\Drive\git\server45\repository\sofiles" -Include *.* -File -Recurse | foreach { $_.Delete()}
Start-Sleep -s 1
echo " files removed ..."

# replacing Build Files
Copy-Item -Path "C:\Drive\Projects\AndroidStudio\oktapus\app\build\intermediates\cmake\debug\obj\" -Destination "C:\Drive\git\server45\repository\sofiles" -Recurse -force
Start-Sleep -s 1
echo "`n files copied !!!"
Start-Sleep -s 1

#uploading to server
echo " initializing server ..."
echo " uploading to server `n`n"
Start-Sleep -s 0.5
git add .
git commit -m "from cmd"
git push -u origin gh-pages
echo " uploaded"
Start-Sleep -s 0.5

#check for server existance
echo "`n`n checking server ... `n`n"
git push -u origin gh-pages
echo "`n getting status ... `n"
git status
echo " operation completed `n`n"

#waiting for gh-pages depolyment
echo " `n`n`n`n please wait until server response ..."

for ($i = 1; $i -le 100; $i++ )
{
    if($i -match 9  ){
        echo $i% 
    }
    Start-Sleep -Milliseconds 700
}

echo " `t server response received . Everything is done "

#operation finished sucussful or failure 
pause