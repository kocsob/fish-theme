function __docker-stop-all --description "Stop all running docker container"
    for cid in (docker ps -q)
        echo (docker stop $cid) "stopped"
    end
end
