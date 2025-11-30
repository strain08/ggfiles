#!/usr/bin/env bash

# ggfiles init file for bash
# Source with: source /path/to/ggpath.sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
[ -f "$SCRIPT_DIR/init.sh" ] || {
	echo "error: could not detect script directory."
	exit 1
}

if [[ ! $PATH =~ "_ggfiles" ]]; then
    PATH=$PATH:$SCRIPT_DIR
    echo "$SCRIPT_DIR added to \$PATH"
fi

GG_BACKUP_ROOT=$SCRIPT_DIR/../../ggrepo

if [ -d "$SCRIPT_DIR/../../ggrepo" ]; then
	export GG_BACKUP_ROOT
else
	echo Backup root not found in $GG_BACKUP_ROOT
fi