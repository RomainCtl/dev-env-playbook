# Ansible Playbook to setup dev environment on WSL2 - Ubuntu

## How to

```sh
## One-time: install ansible + git in WSL2
sudo apt update && sudo apt install -y ansible git

## Install needed requirements:
ansible-galaxy install -r requirements.yml

## Run the playbook
ansible-playbook --connection local --inventory invetory.ini --extra-var USERNAME="YOUR_USERNAME" playbook.yml
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

## Troubleshooting

__"Premature end of stream waiting for become success." error in task using "become: true":__

Add this line `<username>   ALL=(ALL) NOPASSWD: ALL` in a file in `/etc/sudoers.d/no-passord-users` (can replace the username by `%sudo` if you want this behavior for all sudo users).
