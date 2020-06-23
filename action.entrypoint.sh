#!/bin/sh -l

log=$(mdl $INPUT_PARAMETERS)
echo "::set-output name=log::$log"

if [[ $log == *"A detailed description of the rules"* ]]; then
    exit 1
fi

echo $log
exit 0
