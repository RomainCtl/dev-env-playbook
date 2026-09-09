# Ansible Playbook to setup dev environment on WSL2 - Ubuntu

## How to

Clone this repo or download and unzip it.

Then you just need to run (it will install ansible, install requirements and proceed with the playbook):

```sh
install.sh
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
