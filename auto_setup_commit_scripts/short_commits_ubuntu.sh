now=$(date +"%b%d%Y_%H%M%S")

cd /home/user/Dropbox/Prog/Py16/1_Macys_Shared_Repos

git config credential.helper store

echo "Starting utils_and_queries"
cd utils_and_queries
git pull
git add .
git commit -m "auto commit from home $now"
git push
echo "Finished utils_and_queries"

echo "Starting data_wrangling"
cd ../data_wrangling
git pull
git add .
git commit -m "auto commit from home $now"
git push
echo "Finished data_wrangling"

echo "Starting Viz_Model_Eval"
cd ../Viz_Model_Eval
git pull
git add .
git commit -m "auto commit from home $now"
git push
echo "Finished Viz_Model_Eval"


echo "Finished all commits"
cd /home/user/Dropbox/Prog/Py16/1_Macys_Shared_Repos
