echo "----- what spot-groups do we have -----"

TOOL="vdb-sql"
ACC="SRR834507"
SELECT="select SPOT_GROUP, count( SPOT_GROUP ) from VDB group by SPOT_GROUP;"

#to prevent the shell from expanding '*' into filenames!
set -f

CMD="$TOOL :memory: -acc $ACC \"$SELECT\""
echo $CMD
eval $CMD
