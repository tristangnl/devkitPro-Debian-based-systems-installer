# devkitPro-Debian-based-systems-installer
The installer script for devkitPro on Debian-based Linux systems because the official one returns error 403 forbidden. 
I replaced the wget command with the actual public key stored locally in the repository.

Compatible with: Debian - Ubuntu - Linux Mint - Pop!_OS - Kali Linux - Raspberry Pi OS ...

This script installs (dkp-)pacman from devkitPro to manage and install devkitPro libraries.



> [!IMPORTANT]
> #### Please read the instructions below to properly use the script and pacman.


### useful links 
The official script provided by devkitPro: https://apt.devkitpro.org/install-devkitpro-pacman

The documentation to install devkitPro pacman on Linux: https://devkitpro.org/wiki/devkitPro_pacman

The official devkitpro-pub.gpg key file: https://apt.devkitpro.org/devkitpro-pub.gpg

## Usages
> [!NOTE]
> please read the code before using it for your own peace of mind.

Clone the repository `git clone https://github.com/tristangnl/devkitPro-Debian-based-systems-installer.git` or download the .zip file. 

Then, navigate to the repository directory via the terminal and type `chmod +x installdkp.sh` followed by `./installdkp.sh` to execute it.



## How to use pacman

See the official documentation here: https://devkitpro.org/wiki/devkitPro_pacman#Using_Pacman

Instead of using the `pacman` command directly, you should use the full path: `/opt/devkitpro/pacman/bin/pacman`.

For convenience, you can create an alias to use pacman as `dkp-pacman`: `alias dkp-pacman="/opt/devkitpro/pacman/bin/pacman"`.
However, it is not recommended to add /opt/devkitpro/pacman/bin to your system PATH as this may cause issues.


## After

Set environment variables in bashrc:
```
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC
```
