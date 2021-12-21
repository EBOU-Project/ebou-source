
Debian
====================
This directory contains files used to package eboud/ebou-qt
for Debian-based Linux systems. If you compile eboud/ebou-qt yourself, there are some useful files here.

## ebou: URI support ##


ebou-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install ebou-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your ebou-qt binary to `/usr/bin`
and the `../../share/pixmaps/ebou128.png` to `/usr/share/pixmaps`

ebou-qt.protocol (KDE)

