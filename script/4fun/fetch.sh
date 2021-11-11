
#!/bin/sh
#
# System info

wm="$(wmctrl -m | grep Name: | cut -d ' ' -f2)"
distro="$(cat /etc/*-release | grep PRETTY_NAME | cut -d '=' -f2 | tr -d '"')"
packages="$(pacman -Qq | wc -l)"
font="Dina"
colors="base16 material"

printf " \e[0m\n"
printf " \e[1;34m      distro \e[0m$distro\n"
printf " \e[1;34m    packages \e[0m$packages\n"
printf " \e[1;34m          wm \e[0m$wm\n"
printf " \e[1;34m        font \e[0m$font $fontsize\n"
printf " \e[1;34m      colors \e[0m$colors\n"
printf " \e[0m\n"

colorpanes2.sh
