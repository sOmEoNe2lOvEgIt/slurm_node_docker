echo -e "\033[0;31m"
docker rm  $(docker stop $(docker ps -a -q --filter ancestor="node" --format="{{.ID}}"))
echo -e "\033[0;32m###########_Starting node container_###########\033[0;0m"
docker run --name="slurm_node0" -ti --hostname="slurm_node0" --network slurm-network -v /home/slurm_node/etc/slurm_conf:/etc/slurm -v /sys/fs/cgroup:/sys/fs/cgroup:ro node