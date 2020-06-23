#!/bin/sh

LOG=$(mdl $INPUT_PARAMETERS)

LOG="${LOG//'%'/'%25'}"
LOG="${LOG//$'\n'/'%0A'}"
LOG="${LOG//$'\r'/'%0D'}"

echo "::set-output name=log::$LOG"

echo "::debug::$LOG"
echo "::debug::THIS IS A SANITY CHECK.."

echo $LOG | grep "^.*A detailed description of the rules.*" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
    exit 1
fi


exit 0
