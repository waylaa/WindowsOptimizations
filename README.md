# Windows Optimizations
This project contains a few PowerShell scripts aimed at tweaking Windows (specifically Windows 7 to Windows 11) in some of its important areas, such as input, networking, and the system itself. Some of code for these scripts was gathered from forums, websites, and other people I have met throughout the years who were into tweaking Windows.

[Here is the code I used in my NetworkOptimizations file.](https://www.speedguide.net/articles/windows-10-tcpip-tweaks-5077/p-1/)

Nowadays, there are better alternatives than running a bunch of scripts. The best alternative currently is just using custom Windows such as ReviOS or AtlasOS (*I do not promote using these projects, just saying*).

## Project structure:
- Input → Aimed at removing pointer acceleration, setting a 1:1 pointer precision, reducing unneeded processes and disabling GameDVR (Disabling Xbox related applications such as the Xbox game bar).

- Network → Improves TCP/UDP, DNS and overall throughput. May decrease ping as well. Generally, do not expect noticeable results in every system. Some with slower or faster internet connections may find those specific scripts beneficial, others may not.

- System → Improves GPU scheduling, reduces processes without downgrading the OS, changes to a better system profile and disables unnecessary services **(Check the 'ServivceOptimizations' script and comment out any service that you need)**.

# Acknowledgement
I am not responsible for any damage that these scripts may cause to your computer. It is your responsibility to read the code through each file and have an understanding of what is happening under the hood. In other words, **do your own research before running them**.
