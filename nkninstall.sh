#!/bin/bash
echo -e "\033[1;36mLINUX UPGRADE RUNNING\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
sudo apt-get update -y
echo -e "\033[1;36mLINUX UPGRADE RUNNING\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
sudo apt-get upgrade -y
echo -e "\033[1;36mDELETING THE OLD DATABASE\033[0m"
echo ""
cd ..
cd nkn/nkn-commercial/services/nkn-node/
rm -r ChainDB
echo -e "\033[1;36mDOWNLOAD THE NEW DATABASE\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
wget https://nkn.org/ChainDB_pruned_latest.tar.gz
echo -e "\033[1;36mUNZIP DATABASE\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
tar -vzxf ChainDB_pruned_latest.tar.gz
echo -e "\033[1;36mREMOVING TEMP DATABASE FILES\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
rm -r ChainDB_pruned_latest.tar.gz
