NOW=$(date)

git config credential.helper store

echo "Starting FBT"
cd /home/jovyan/work/yh09262/
cd FBT
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished FBT"

echo "Starting FinStats"
cd ../FinStats
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished FinStats"

echo "Starting Recom_Eval"
cd ../Recom_Eval
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished Recom_Eval"

echo "Starting ToolsUtils"
cd ../ToolsUtils
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished ToolsUtils"

echo "Starting Viz_Model_Eval"
cd ../Viz_Model_Eval
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished Viz_Model_Eval"

echo "Starting comp_serve_v2"
cd ../comp_serve_v2
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished comp_serve_v2"

echo "Starting complementary_product_recs"
cd ../complementary_product_recs
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished complementary_product_recs"

echo "Starting data_wrangling"
cd ../data_wrangling
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished data_wrangling"

echo "Starting lessons"
cd ../lessons
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished lessons"

echo "Starting pyspark_modeling"
cd ../pyspark_modeling
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished pyspark_modeling"

echo "Starting sota_arxiv_query"
cd ../sota_arxiv_query
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished sota_arxiv_query"

echo "Starting cython_home"
cd ../cython_home
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished cython_home"

echo "Starting utils_and_queries"
cd ../utils_and_queries
git pull
git add .
git commit -m "automated commit from mldev $NOW"
git push
echo "Finished utils_and_queries"


echo "Finished all commits"
