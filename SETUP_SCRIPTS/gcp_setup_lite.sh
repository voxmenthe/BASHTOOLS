sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y mc screen htop

sudo pip install --upgrade pip
sudo pip install -r gcp_requirements_lite.txt --upgrade


git config --global credential.helper 'cache --timeout=99999999999'
sh all_commits_gcp.sh

cd /home/jovyan/work/a091569/RECOM_LIBS/

echo "Pulling and Installing latest: mml-lib"
cd ../mml-lib
git pull
sudo pip install -e .
echo "Finished pulling and installing: mml-lib"

echo "Pulling and Installing latest: recom-evaluator"
cd ../recom-evaluator
git pull
sudo pip install -e .
echo "Finished pulling and installing: recom-evaluator"
