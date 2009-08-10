# swappiness controls the intensity of swap use, varying between 0 and 100
# this command modifies the swappiness in runtime, but the change won't persist after shutdown
sudo sysctl -w vm.swappiness=0
