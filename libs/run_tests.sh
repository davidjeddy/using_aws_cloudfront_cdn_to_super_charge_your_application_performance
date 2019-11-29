#!/bin/bash

JAVA_OPTS="-Dtarget=ctscya.davidjeddy.com."

cd ./gatling

echo 'Run test agains naked domain...'

# JAVA_OPTS="-Dtarget=35.170.196.248" \
# ./bin/gatling.sh \
# -sf ./testing/load/gatling \
# -rf ./testing/load/gatling/results/nginx_cache \
# -s HighLoadCMS \
# -rd 'nginx cache test 2'

./gatling/bin/gatling.sh -sf ./tests/ -s LoadSimulation -rf ./results/

$(terraform output website_dns)

echo 'Run test against CDN...'

$(terraform output cdn_website_dns)
