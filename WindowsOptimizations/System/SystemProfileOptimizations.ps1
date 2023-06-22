Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile -Name SystemResponsiveness -Value "1"
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\\Windows NT\CurrentVersion\Multimedia\\SystemProfile\Games -Name Priority -Value 6
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\\Windows NT\CurrentVersion\Multimedia\\SystemProfile\Games -Name "Scheduling Category" -Value "High"
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\\Windows NT\CurrentVersion\Multimedia\\SystemProfile\Games -Name "SFIO Priority" -Value "High"

Write-Information "[SystemProfileOptimizations] Optimizations applied successfully."