#!/usr/bin/env fish

mkdir -p "$HOME/.config/fish/conf.d/"
cp -i ./ggfiles.fish "$HOME/.config/fish/conf.d/"
set os (uname -s)

switch "$os"
    case "FreeBSD"
        if not pkg info rsync >/dev/null 2>&1
            pkg install -y rsync
        end
        if not pkg info bash >/dev/null 2>&1
            pkg install -y bash
        end
        exit 0
    case "*"
        # Handle other OS cases if needed
end
