#!/bin/sh
set -e
PATH="/usr/local/bin:$PATH"
dir="`git rev-parse --git-dir`"
trap 'rm -f "$dir/$$.tags"' EXIT
ctags --tag-relative=yes -R -f "$dir/$$.tags" --fields=+aimlS --languages=php --PHP-kinds=+cdfint-av --exclude=composer.phar --exclude=*Test.php --exclude=*phpunit* --exclude="\.git"
mv "$dir/$$.tags" "$dir/tags"
