docker rm  $(docker stop $(docker ps -a -q --filter ancestor="slurm_node" --format="{{.ID}}"))
echo -e "\033[0;32m###########_Stopped removed old nodes_###########\033[0;0m"