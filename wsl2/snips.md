https://stackoverflow.com/questions/65815011/moving-files-between-different-wsl2-instances
https://superuser.com/questions/1659218/is-there-a-way-to-access-files-from-one-wsl-2-distro-image-in-another-one/1659355#1659355
https://github.com/microsoft/WSL/issues/5177
https://askubuntu.com/questions/1395780/accessing-ubuntu-wsl-files-from-kali-wsl-and-vice-versa/1395784#1395784

# Sharing the files between distros
# Make sure fstab option is enabled in `/etc/fuse.conf`
`mkdir -p /mnt/wsl/instances/$WSL_DISTRO_NAME`
`wsl.exe -d $WSL_DISTRO_NAME -u root mount --bind / /mnt/wsl/instances/$WSL_DISTRO_NAME`
