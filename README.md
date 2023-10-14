# HypervisorControl

A tool to quickly disable or enable the hypervisor, created by aneeskhan47.

![image](https://github.com/aneeskhan47/hypervisorcontrol/assets/30714223/1412d2b8-4482-4c71-b0a9-71e0501e664a)

# Why I Created This Tool

I have an i7 7th gen cpu which does not have a TPM 2.0 module and I also use WSL2 for my work. So I needed a way to quickly toggle the hypervisor on or off. I couldn't find any tool that did this, so I created one myself.

I developed this tool to address a specific challenge I faced. While playing the game Valorant, its Vanguard anti-cheat system requires that either the TPM 2.0 module be present or that the hypervisor be disabled. However, for my work, I frequently use WSL2, which requires the hypervisor to be enabled. This tool allows users to seamlessly switch between having the hypervisor enabled or disabled, followed by a system restart, ensuring compatibility both for valorant and work purposes.

This tool just helps you to quickly toggle the hypervisor on or off. Not just for Valorant, but for any other application or game that requires either the TPM 2.0 module or hypervisor to be disabled.

# How to Use

1. Download the `HypervisorControl.exe` from the releases.
2. Open the tool. Based on the current status of the hypervisor:
   1. If the hypervisor is enabled, the tool will prompt you with an option to disable it. Upon confirmation, the tool will disable the hypervisor and ask you whether you want to restart the system.
   2. If the hypervisor is disabled, the tool will prompt you with an option to enable it. Upon confirmation, the tool will enable the hypervisor and ask you whether you want to restart the system.

I hope this suits your needs! Let me know if there are any other adjustments you'd like. Feel free to open an issue.
