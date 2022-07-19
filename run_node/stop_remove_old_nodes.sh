docker rm  $(docker stop $(docker ps -a -q --filter ancestor="node" --format="{{.ID}}"))
echo -e "\033[0;32m###########_Stopped removed old nodes_###########\033[0;0m"