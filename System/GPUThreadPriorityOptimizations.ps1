[string]$brand = Get-CimInstance -Class Win32_VideoController | Select-Object -Property Name

switch($brand)
{
    {($_ -eq "nvidia") -or ($_ -eq "Nvidia") -or ($_ -eq "NVIDIA")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters -Name ThreadPriority -Value 0000001F
        Write-Information "[GPUThreadPriorityOptimizations] Optimizations applied successfully."
    }
    {($_ -eq "amd") -or ($_ -eq "Amd") -or ($_ -eq "AMD")}
    {
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\amdkmdap\Parameters -Name ThreadPriority -Value 0000001F
        Write-Information "[GPUThreadPriorityOptimizations] Optimizations applied successfully."
    }
    Default
    {
        Write-Error "Failed to increase GPU priority. No NVIDIA or AMD graphics card found."
    }
}