#!bin/bash
#name: script1
#purpose: show user's login information
#version: 1.0
#created: 2019-04-04
#creator nathanial krueger

echo "Hello, $LOGNAME.  Today is $( date +%A ), $( date +%B ) $( date +%d ).  The time is $( date +%I:%M ) $( date +%P )."
echo "You have logged into a ${TERM^} Terminal."
