#!/bin/bash
# regenerates README.md and README from the Oracle::TNS POD, run it after
# changing the POD in lib/Oracle/TNS.pm
cd "$(dirname "$0")" || exit 1
pod2markdown < lib/Oracle/TNS.pm > README.md
pod2text     < lib/Oracle/TNS.pm > README
