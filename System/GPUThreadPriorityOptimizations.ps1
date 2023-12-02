Write-Host "Optimization scripts created by waylaa (https://github.com/waylaa/WindowsOptimizations)" -ForegroundColor Green
Write-Host "If you paid for any of these scripts, you have been scammed." -ForegroundColor Green

[string]$brand = (Get-CimInstance -Class Win32_VideoController).Name.ToString()

switch -Regex ($brand)
{
    ".*nvidia.*"
    {
        if (Test-Path -Path HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters)
        {
            Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters -Name ThreadPriority -Value 0000001F
        }
        else
        {
            New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters
            New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters -Name ThreadPriority -Value 0000001F
        }

        Write-Output "[GPUThreadPriorityOptimizations] Optimizations applied successfully."
        break
    }
    ".*amd.*"
    {
        if (Test-Path -Path HKLM:\SYSTEM\CurrentControlSet\Services\amdkmdap\Parameters)
        {
            Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\amdkmdap\Parameters -Name ThreadPriority -Value 0000001F
        }
        else
        {
            New-Item -Path HKLM:\SYSTEM\CurrentControlSet\Services\amdkmdap\Parameters
            New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\amdkmdap\Parameters -Name ThreadPriority -Value 0000001F
        }

        Write-Output "[GPUThreadPriorityOptimizations] Optimizations applied successfully."
        break
    }
    Default
    {
        Write-Output "Failed to increase GPU priority. No NVIDIA or AMD graphics card found."
        break
    }
}