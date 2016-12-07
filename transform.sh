cat *.template \
    | sed "s/%SERIAL%/$(date +%s)/" \
    | sed "s/%HOMEIP%/$(echo $SSH_CONNECTION | awk '{print $1}')/" \
    | sed s/%LUPD%/"$(date)\"/
    
