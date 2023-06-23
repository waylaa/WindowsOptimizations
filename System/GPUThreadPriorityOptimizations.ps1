[string]$brand = (Get-CimInstance -Class Win32_VideoController).Name.ToString()

Write-Output $brand

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

        Write-Information "[GPUThreadPriorityOptimizations] Optimizations applied successfully."
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

        Write-Information "[GPUThreadPriorityOptimizations] Optimizations applied successfully."
        break
    }
    Default
    {
        Write-Error "Failed to increase GPU priority. No NVIDIA or AMD graphics card found."
        break
    }
}