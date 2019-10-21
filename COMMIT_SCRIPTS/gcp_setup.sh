sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y mc wkhtmltopdf screen htop

sudo pip install --upgrade pip
sudo pip install -r gcp_requirements.txt --upgrade


git config --global credential.helper 'cache --timeout=99999999999'
sh all_commits_gcp.sh

cd /home/jovyan/work/yh09262/RECOM_LIBS/

echo "Pulling latest: pros-dataset-etl"
cd pros-dataset-etl
git pull
echo "Finished pulling: pros-dataset-etl"

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

echo "Pulling and Installing latest: als-eals"
cd ../als-eals
git pull
sudo pip install -e .
echo "Finished pulling and installing: als-eals"

echo "Pulling and Installing latest: summon-als-category-clusters"
cd ../summon-als-category-clusters
git pull
sudo pip install -e .
echo "Finished pulling and installing: summon-als-category-clusters"