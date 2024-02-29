#!/usr/bin/env bash

echo "Welcome to the stkshell setup!
Any errors? report here: https://github.com/SecondLuke242014/stksh"

echo "STK path:"
read stkpath

cd $stkpath

stkshellcode="#!/usr/bin/env bash
function makemusic() {
echo \"<?xml version=\"1.0\"?>
<music title='$1' composer='$2' gain='1.0' fast='$3' file='$4' />\" > stkshell.sh
}
"

echo "Building directory shell..."

mkdir shell

cd shell

echo $stkshellcode > stkshell.sh

echo "Done"
