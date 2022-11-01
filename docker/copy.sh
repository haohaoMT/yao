#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20220814.sql ./mysql/db
cp ../sql/ry_config_20220510.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../yao-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy yao-gateway "
cp ../yao-gateway/target/yao-gateway.jar ./yao/gateway/jar

echo "begin copy yao-auth "
cp ../yao-auth/target/yao-auth.jar ./yao/auth/jar

echo "begin copy yao-visual "
cp ../yao-visual/yao-monitor/target/yao-visual-monitor.jar  ./yao/visual/monitor/jar

echo "begin copy yao-modules-system "
cp ../yao-modules/yao-system/target/yao-modules-system.jar ./yao/modules/system/jar

echo "begin copy yao-modules-file "
cp ../yao-modules/yao-file/target/yao-modules-file.jar ./yao/modules/file/jar

echo "begin copy yao-modules-job "
cp ../yao-modules/yao-job/target/yao-modules-job.jar ./yao/modules/job/jar

echo "begin copy yao-modules-gen "
cp ../yao-modules/yao-gen/target/yao-modules-gen.jar ./yao/modules/gen/jar

