docker stop node
docker rm node
docker run --name="slurm_node0" --hostname="slurm_node0" --network slurm-network -v /home/slurm_node/etc/slurm_conf:/etc/slurm node