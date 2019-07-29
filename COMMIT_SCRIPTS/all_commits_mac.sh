NOW=$(date)

cd /Users/a091569/Desktop/OneDrive/macysrepos

git config credential.helper store

echo "Starting FinStats"
cd FinStats
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished FinStats"

echo "Starting cython_home"
cd ../cython_home
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished cython_home"

echo "Starting utils_and_queries"
cd ../utils_and_queries
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished utils_and_queries"

cd ../Recom_Eval
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

cd ../ToolsUtils
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

cd ../Viz_Model_Eval
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

cd ../comp_serve_v2
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

cd ../complementary_product_recs
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

cd ../data_wrangling
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

cd ../lessons
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

cd ../pyspark_modeling
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

cd ../sota_arxiv_query
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push

echo "Finished all commits"
