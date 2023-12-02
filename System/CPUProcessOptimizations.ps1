Write-Host "Optimization scripts created by waylaa (https://github.com/waylaa/WindowsOptimizations)" -ForegroundColor Green
Write-Host "If you paid for any of these scripts, you have been scammed." -ForegroundColor Green

[string]$physicalMemory = [math]::Round((Get-CimInstance Win32_ComputerSystem | Select-Object TotalPhysicalMemory).TotalPhysicalMemory / 1GB, 2)

switch($physicalMemory)
{
    {($_ -eq "3.9") -or ($_ -eq "4")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 4194304
        Write-Output "[CPUProcessOptimizations] Optimizations applied successfully."
        break
    }
    {($_ -eq "5.9") -or ($_ -eq "6")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 6291456
        Write-Output "[CPUProcessOptimizations] Optimizations applied successfully."
        break
    }
    {($_ -eq "7.9") -or ($_ -eq "8")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 8388608
        Write-Output "[CPUProcessOptimizations] Optimizations applied successfully."
        break
    }
    {($_ -eq "11.9") -or ($_ -eq "12")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 12582912
        Write-Output "[CPUProcessOptimizations] Optimizations applied successfully."
        break
    }
    {($_ -eq "15.9") -or ($_ -eq "16")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 16777216
        Write-Output "[CPUProcessOptimizations] Optimizations applied successfully."
        break
    }
    {($_ -eq "23.9") -or ($_ -eq "24")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 25165824
        Write-Output "[CPUProcessOptimizations] Optimizations applied successfully."
        break
    }
    {($_ -eq "31.9") -or ($_ -eq "32")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 33554432
        Write-Output "[CPUProcessOptimizations] Optimizations applied successfully."
        break
    }
    {($_ -eq "63.9") -or ($_ -eq "64")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 67108864
        Write-Output "[CPUProcessOptimizations] Optimizations applied successfully."
        break
    }
    Default
    {
        Write-Output "Failed to limit SVC hosts because the amount of memory is greater than 64GB or less than 4GB."
        break
    }
}