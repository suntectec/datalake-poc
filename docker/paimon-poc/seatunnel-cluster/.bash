docker run --name seatunnel_client \
    --network pub-network \
    -e ST_DOCKER_MEMBER_LIST=seatunnel_master:5801 \
    --rm \
    apache/seatunnel \
    ./bin/seatunnel.sh  -c config/v2.batch.config.template

