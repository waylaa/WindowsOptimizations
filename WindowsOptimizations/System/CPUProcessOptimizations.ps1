[string]$physicalMemory = (Get-CimInstance -Class Win32_PhysicalMemory | Select-Object -Property Capacity) / 1GB

switch($physicalMemory)
{
    {($_ -eq "3.9") -or ($_ -eq "4.0")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 4194304
        Write-Information "[CPUProcessOptimizations] Optimizations applied successfully."
    }
    {($_ -eq "5.9") -or ($_ -eq "6.0")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 6291456
        Write-Information "[CPUProcessOptimizations] Optimizations applied successfully."
    }
    {($_ -eq "7.9") -or ($_ -eq "8.0")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 8388608
        Write-Information "[CPUProcessOptimizations] Optimizations applied successfully."
    }
    {($_ -eq "11.9") -or ($_ -eq "12.0")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 12582912
        Write-Information "[CPUProcessOptimizations] Optimizations applied successfully."
    }
    {($_ -eq "15.9") -or ($_ -eq "16.0")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 16777216
        Write-Information "[CPUProcessOptimizations] Optimizations applied successfully."
    }
    {($_ -eq "23.9") -or ($_ -eq "24.0")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 25165824
        Write-Information "[CPUProcessOptimizations] Optimizations applied successfully."
    }
    {($_ -eq "31.9") -or ($_ -eq "32.0")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 33554432
        Write-Information "[CPUProcessOptimizations] Optimizations applied successfully."
    }
    {($_ -eq "63.9") -or ($_ -eq "64.0")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control -Name SvcHostSplitThresholdInKB -Value 67108864
        Write-Information "[CPUProcessOptimizations] Optimizations applied successfully."
    }
    Default
    {
        Write-Error "Failed to limit SVC hosts because the amount of memory is greater than 64GB or less than 4GB."
    }
}