#!bin/bash
#name: script4
#version: 1.0
#purpose: search users' home directories for trigger words
#created: 2019/04/23
#creator: nathanial krueger

wordlist="/opt/wordlist"
badwords=""
while IFS= read -r word
do
badwords="$badwords\b$word\b|"
done < "$input"
badwords=${badwords%\|}
echo $badwords
