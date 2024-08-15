#!/bin/bash

# 等待 Seafile 容器启动
CONTAINER_NAME="seafile"

# 等待容器启动
until [ "$(docker inspect -f '{{.State.Running}}' $CONTAINER_NAME)" == "true" ]; do
    echo "等待 Seafile 容器启动..."
    sleep 5
done

echo "Seafile 容器已启动，开始执行 seaf-fuse.sh..."

# 进入容器并执行 seaf-fuse.sh
docker exec $CONTAINER_NAME /opt/seafile/seafile-server-latest/seaf-fuse.sh start /shared/seafile-fuse

echo "seaf-fuse.sh 已成功执行。"
