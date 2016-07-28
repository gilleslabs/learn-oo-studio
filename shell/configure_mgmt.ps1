mkdir ~/oo-src

cp $env:SystemDrive/vagrant/src/* ~/oo-src/

cd ~/oo-src

~/oo-src/community-installer-win64-studio.exe -gm2 -s oo-silent-install | Out-Null


$1 = New-WinUserLanguageList en-US
$1.Add("fr-FR")
Set-WinUserLanguageList $1 -Force

$file = "$env:windir\System32\drivers\etc\hosts"
"10.154.128.10 oo-studio.example.com" | Add-Content -PassThru $file

$env:Path = $env:Path + ";C:\Program Files\Git\usr\bin"
Restart-Computer -Force

