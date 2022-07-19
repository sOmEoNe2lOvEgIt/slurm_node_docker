./stop_remove_old_nodes.sh
echo -e "\033[0;32m###########_Cleaned old nodes_###########\033[0;0m"
./run_node_1.sh &
echo -e "\033[0;32m###########_Started node 1_###########\033[0;0m"
./run_node_2.sh &
echo -e "\033[0;32m###########_Started node 2_###########\033[0;0m"
./run_node_3.sh &
echo -e "\033[0;32m###########_Started node 3_###########\033[0;0m"