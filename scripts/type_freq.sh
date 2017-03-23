#! /bin/bash

#Visszaadja egy szöveg type-jait azok előfordulási darabszámukkal együtt"
#Így használd: STDIN-en várja a szöveget, STDOUT-ra ír"

cat $*  | grep -v '^$' | sed -r 's/\s+/\n/g' | sort | uniq -c | sort -nr
