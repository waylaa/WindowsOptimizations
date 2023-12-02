# Windows Optimizations
This project contains a few PowerShell scripts aimed at tweaking Windows (specifically Windows 10 and 11) Some of the code for these scripts was gathered from forums, websites, and other people I have met throughout the years who were into tweaking Windows.

## Project structure:
- Input → Aimed at removing pointer acceleration, setting a 1:1 pointer precision, reducing unneeded processes and disabling GameDVR (Disabling Xbox related applications such as the Xbox game bar).

- Network → Improves TCP/UDP, DNS and overall throughput. May decrease ping as well. Generally, do not expect noticeable results in every system. Some with slower or faster internet connections may find those specific scripts beneficial, others may not.

- System → Improves GPU scheduling, reduces processes without downgrading the OS, changes to a better system profile and disables unnecessary services **(Check the 'ServivceOptimizations' script and comment out any service that you need)**.

## Usage
1. Download the repository from [here](https://github.com/waylaa/WindowsOptimizations/archive/refs/heads/main.zip).
2. Extract the downloaded folder.
3. Navigate through each folder and open **as administrator** whichever script you want.

## Disclaimer
I am not responsible for any damage that these scripts may cause to your operating system. It is your responsibility to read the code of every script you are going to run and have an understanding of what is happening under the hood. In other words, do your own research before running them.

## License

[The Unlicense](https://choosealicense.com/licenses/unlicense/)
