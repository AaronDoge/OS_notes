#!/bin/bash
#
declare -i SHOWNUM=0
declare -i SHOWUSERS=0

for I in `seq l $#`; do
  if [ $# -gt 0 ]; then
      case $l in
      -h|--help)
        echo "USage: `basename $0` -h|--help -c|--count -v|--verbose"
        exit 0;;
       -v|--verbose)
        let SHOWUSERS=1
        shift ;;
       -c|--count)
        let SHOWNUM=1
        shift ;;
       *)
        echo "Usage: `basename $0 -h|--help -c|--count -v|--verbose"
        exit 8 ;;
       esac
    fi
done

if [ $SHOWNUM -eq l ]; then
  echo "Logged users: `who | wc -l`."
  if {$SHOWUSERS -eq l ]; then
    echo "They are:"
    who
  fi
fi


