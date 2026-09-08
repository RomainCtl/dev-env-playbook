# Ansible Playbook to setup dev environment on WSL2 - Ubuntu

## How to

```sh
## One-time: install ansible + git in WSL2
sudo apt update && sudo apt install -y ansible git

## Also needed for some tasks:
ansible-galaxy collection install community.general

## Run the playbook
ansible-playbook playbook.yml --ask-become-pass
```

## Editor/IDE

vscode and intellij must be installed on windows side (better performence, GUI).

- For vscode, install the WSL extension.
- For intellij, install the WSL plugin (or the "WSL" remote target support built into recent IntelliJ versions), and ensure:
    - In IntelliJ: Settings > Build Tools > Maven, point JDK path to
           your SDKMAN java if you want IntelliJ to use the WSL toolchain
           via WSL-based project (File > New > Project from Existing
           Sources, opened via \\wsl$ path or WSL remote target).
    - SDKMAN-managed JDKs live at: ~/.sdkman/candidates/java/<version>
