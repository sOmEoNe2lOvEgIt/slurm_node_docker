echo -e "\033[0;31m"
docker rm  $(docker stop $(docker ps -a -q --filter ancestor="slurm_node" --format="{{.ID}}"))
docker image rm -f slurm_node
echo -e "\033[0;32m###########_Building image_###########\033[0;0m"
docker build --build-arg http_proxy=http://192.168.26.1:8118 --build-arg https_proxy=http://192.168.26.1:8118 -t slurm_node .
