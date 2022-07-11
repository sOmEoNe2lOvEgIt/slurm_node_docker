echo -e "\033[0;31m"
docker rm  $(docker stop $(docker ps -a -q --filter ancestor="node" --format="{{.ID}}"))
docker image rm -f node
echo -e "\033[0;32m###########_Building image_###########\033[0;0m"
docker build -t node .