# 提交作业到集群
# 使用docker container作为客户端

# 提交任务
docker run --name seatunnel_client \
    --network pub-network \
    -e ST_DOCKER_MEMBER_LIST=seatunnel_master:5801 \
    --rm \
    apache/seatunnel \
    ./bin/seatunnel.sh  -c config/v2.batch.config.template

# 查看作业列表
docker run --name seatunnel_client \
    --network pub-network \
    -e ST_DOCKER_MEMBER_LIST=seatunnel_master:5801 \
    --rm \
    apache/seatunnel \
    ./bin/seatunnel.sh  -l

