sudo apt-get update
sudo apt-get install -y mc wkhtmltopdf screen htop

sudo pip install --upgrade pip
sudo pip install -r gcp_requirements.txt --upgrade


git config --global credential.helper 'cache --timeout=99999999999'
sh all_commits_gcp.sh

cd /home/jovyan/work/a091569/RECOM_LIBS/

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