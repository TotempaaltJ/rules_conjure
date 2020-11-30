set -ex

JSONRE=$(cat <<'ENDOFPERL'
  m/
  (?(DEFINE)
     (?<number>   -? (?= [1-9]|0(?!\d) ) \d+ (\.\d+)? ([eE] [+-]? \d+)? )    
     (?<boolean>   true | false | null )
     (?<string>    " ([^"\\\\]* | \\\\ ["\\\\bfnrt\/] | \\\\ u [0-9a-f]{4} )* " )
     (?<array>     \[  (?:  (?&json)  (?: , (?&json)  )*  )?  \s* \] )
     (?<pair>      \s* (?&string) \s* : (?&json)  )
     (?<object>    \{  (?:  (?&pair)  (?: , (?&pair)  )*  )?  \s* \} )
     (?<json>   \s* (?: (?&number) | (?&boolean) | (?&string) | (?&array) | (?&object) ) \s* )
  )
  \A (?&json) \Z
  /six 
  && print && $MATCH++; 
  END{exit 1 unless $MATCH > 0}
ENDOFPERL
)

FILE="$1"

if [ ! -f "$FILE" ]; then
    echo "Failed: no output in $FILE"
    exit 1
fi

perl -0777 -pe "$JSONRE" $FILE

exit 0
