## 📢 Important Information

**HypervisorControl** is a PowerShell script created by **aneeskhan47** to facilitate the quick toggling of the hypervisor on or off in Windows 10 and 11. It is intended to help users manage the hypervisor for specific use cases and applications, such as gaming (e.g., Valorant) and working with WSL2 at the same time.

**aneeskhan47** is not responsible for any damage, issues, or unexpected consequences that may arise from the use of this tool. HypervisorControl is designed to perform a specific function: toggling the hypervisor state. It does not engage in any suspicious or harmful activities.

Users of this tool are solely responsible for their system's configuration and any potential risks associated with enabling or disabling the hypervisor. Please use HypervisorControl with caution and make sure you understand its impact on your system.

If you encounter any problems or have questions regarding HypervisorControl, feel free to open an issue on the GitHub repository for assistance. However, please note that the tool is provided as-is, without any warranties or guarantees of any kind.

By using HypervisorControl, you acknowledge and accept these terms and conditions.

## 🛠 HypervisorControl

A tool to quickly disable or enable the hypervisor, created by aneeskhan47.

![image](https://github.com/aneeskhan47/hypervisorcontrol/assets/30714223/1412d2b8-4482-4c71-b0a9-71e0501e664a)

## ⁉ Why I Created This Tool

I have an i7-7th gen cpu which does not have a TPM 2.0 module and I also use WSL2 for my work. So I needed a way to quickly toggle the hypervisor on or off. I couldn't find any tool that did this, so I created one myself.

I developed this tool to address a specific challenge I faced. While playing the game Valorant, its Vanguard anti-cheat system requires that either the TPM 2.0 module be present or that the hypervisor be disabled. However, for my work, I frequently use WSL2, which requires the hypervisor to be enabled. This tool allows users to seamlessly switch between having the hypervisor enabled or disabled, followed by a system restart, ensuring compatibility both for valorant and work purposes.

> [!IMPORTANT]  
> You do not need this tool if you have a TPM 2.0 module. You can just enable the hypervisor and Valorant will work fine. This tool is only for those who do not have a TPM 2.0 module and need to quickly toggle the hypervisor on or off. but still, if you just want to quickly toggle the hypervisor on or off you can use this tool.

This tool just helps you to quickly toggle the hypervisor on or off. Not just for Valorant, but for any other application or game that requires either the TPM 2.0 module or hypervisor to be disabled.

**Intended to use with Windows 10 and 11**.

## 🚀 How to Use

1. Download the `HypervisorControl.ps1` PowerShell script file from [here](https://github.com/aneeskhan47/hypervisorcontrol/releases/latest).
2. Open the tool as administrator. Based on the current status of the hypervisor:
   1. If the hypervisor is enabled, the tool will prompt you with an option to disable it. Upon confirmation, the tool will disable the hypervisor and ask you whether you want to restart the system.
   2. If the hypervisor is disabled, the tool will prompt you with an option to enable it. Upon confirmation, the tool will enable the hypervisor and ask you whether you want to restart the system.

I hope this suits your needs! Let me know if there are any other adjustments you'd like. Feel free to open an issue.

## 📜 License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
