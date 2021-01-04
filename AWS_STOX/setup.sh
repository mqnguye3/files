securitygroup=sg-53680c7f
cluster=project2memcache
port=11211


aws elasticache create-cache-cluster \
--cache-cluster-id $cluster \
--cache-node-type cache.t2.small \
--engine memcached \
--engine-version 1.4.24 \
--cache-parameter-group default.memcached1.4 \
--num-cache-nodes 1 \
--port $port \
--security-group-id $securitygroup

