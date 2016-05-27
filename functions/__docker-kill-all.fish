function __docker-kill-all --description "Kill all running docker container"
    for cid in (docker ps -q)
        echo (docker kill $cid) "killed"
    end
end
