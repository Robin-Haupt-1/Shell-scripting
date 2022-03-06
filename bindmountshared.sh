#!/usr/bin/bash
IFS=$'\n'

for d in $(find /hdd/Obsidian -maxdepth 1 -type d); do
  case "$d" in
     "/hdd/Obsidian/\$RECYCLE.BIN") continue
	;;
     "/hdd/Obsidian/System Volume Information") continue
	;;
     "/hdd/Obsidian/_shared") continue
	;;
     "/hdd/Obsidian/.Trash-1000") continue
	;;
     "/hdd/Obsidian") continue
	;;
     "/hdd/Obsidian/Automatic MOC sample") continue
	;;
     "/hdd/Obsidian/_blank vault") continue
	;;
     "/hdd/Obsidian/Plugin Development") continue
	;;
	esac
    rm -r "$d/__shared"
    echo "$d"
done

