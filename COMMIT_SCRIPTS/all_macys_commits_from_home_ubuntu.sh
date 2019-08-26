now=$(date +"%b%d%Y_%H%M%S")
cd /home/user/Dropbox/Prog/Py16/1_Macys_Shared_Repos

echo "Starting cython_home"
cd cython_home
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished cython_home"

echo "Starting complementary_product_recs"
cd complementary_product_recs
git pull
git add .
git commit -m "auto commit from home $now"
echo "Finished complementary_product_recs"

echo "Starting data_wrangling"
cd ../data_wrangling
git pull
git add .
git commit -m "auto commit from home $now"
echo "Finished data_wrangling"

echo "Starting lessons"
cd ../lessons
git pull
git add .
git commit -m "auto commit from home $now"
echo "Finished lessons"

echo "Starting ToolsUtils"
cd ../ToolsUtils
git pull
git add .
git commit -m "auto commit from home $now"
echo "Finished ToolsUtils"

echo "Starting Viz_Model_Eval"
cd ../Viz_Model_Eval
git pull
git add .
git commit -m "auto commit from home $now"
echo "Finished Viz_Model_Eval"


echo "Finished all commits"
cd /home/user/Dropbox/Prog/Py16/1_Macys_Shared_Repos
