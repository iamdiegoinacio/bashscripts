#!/bin/bash


func_update () {
    sudo apt-get update -y
}

func_upgrade () {
    sudo apt-get upgrade -y
}

func_deletechaindb () {
    cd ..
    cd nkn/nkn-commercial/services/nkn-node/
    rm -r ChainDB
}

func_downloadlatestchaindb (){
    wget https://nkn.org/ChainDB_pruned_latest.tar.gz
}

func_unziplatestchaindb (){
    tar -vzxf ChainDB_pruned_latest.tar.gz
}

func_deletedownloadchaindb () {
    rm -r ChainDB_pruned_latest.tar.gz
}


echo -e "\033[1;36mLINUX UPGRADE RUNNING\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
func_update()

echo -e "\033[1;36mLINUX UPGRADE RUNNING\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
func_upgrade()

echo -e "\033[1;36mDELETING THE OLD DATABASE\033[0m"
echo ""
func_deletechaindb()

echo -e "\033[1;36mDOWNLOAD THE NEW DATABASE\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
func_downloadlatestchaindb()

echo -e "\033[1;36mUNZIP DATABASE\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
func_unziplatestchaindb()

echo -e "\033[1;36mREMOVING TEMP DATABASE FILES\033[0m"
echo ""
echo -e "\033[1;33mWAIT..."
func_deletedownloadchaindb()



