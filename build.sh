docker rm  $(docker stop $(docker ps -a -q --filter ancestor="node" --format="{{.ID}}"& )& ) &
docker image rm -f node &
docker build -t node .