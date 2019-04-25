#!bin/bash
#name: script4
#version: 1.0
#purpose: search users' home directories for trigger words
#created: 2019/04/23
#creator: nathanial krueger

wordlist="/opt/wordlist"
foundwords="/opt/foundwords"
searchresults="/opt/searchresults"

echo "Word Search of Home Directories"
echo "Word Search of Home Directories" > $searchresults
echo "search run on $( date '+%F %H:%M:%S' )"
echo "search run on $( date '+%F %H:%M:%S' )" >> $searchresults
echo "" 
echo "" >> $searchresults
echo "Keywords searched for:"
echo "Keywords searched for:" >> $searchresults

badwords=""
while IFS= read -r word
do
  if [ ${#word} -gt 0 ]; then
    badwords="$badwords\b$word\b|"
    echo $word
    echo $word >> $searchresults
  fi
done < "$wordlist"
badwords=${badwords%\|}

echo ""
echo "" >> $searchresults
echo "SEARCH RESULTS"
echo "SEARCH RESULTS" >> $searchresults


grep -i -H -r -E -e $badwords /home > $foundwords 


while IFS= read -r result
do
  filepath=$( echo $result | cut -f 1 -d ":" )
  username=$( echo $filepath | cut -f 3 -d "/" )
  line=$( echo $result | cut -f 2- -d ":" )
  echo "Username: $username"
  echo "Username: $username" >> $searchresults
  echo "Line with bad word found: $line"
  echo "Line with bad word found: $line" >> $searchresults
  echo "Path and file name: $filepath"
  echo "Path and file name: $filepath" >> $searchresults
  echo ""
  echo "" >> $searchresults

done < $foundwords
rm -f $foundwords
