Write-Host "Optimization scripts created by waylaa (https://github.com/waylaa/WindowsOptimizations)" -ForegroundColor Green
Write-Host "If you paid for any of these scripts, you have been scammed." -ForegroundColor Green

if (-not (Test-Path -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Games"))
{
    New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Games"
}

Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" -Name SystemResponsiveness -Value "1"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Games" -Name Priority -Value 6
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Games" -Name "Scheduling Category" -Value "High"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Games" -Name "SFIO Priority" -Value "High"

Write-Output "[SystemProfileOptimizations] Optimizations applied successfully."