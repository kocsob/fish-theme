function __docker-rm-all --description "Remove all docker container"
    for cid in (docker ps -aq)
        echo (docker rm $cid) "removed"
    end
end
