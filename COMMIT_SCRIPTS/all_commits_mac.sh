NOW=$(date)

cd /Users/a091569/Desktop/OneDrive/macysrepos

echo "Starting FinStats"
cd FinStats
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished FinStats"

echo "Starting fast-bert"
cd ../fast-bert
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished fast-bert"

echo "Starting DTOOLS"
cd ../DTOOLS
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished DTOOLS"

echo "Starting BASHTOOLS"
cd ../BASHTOOLS
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished BASHTOOLS"

echo "Starting cython_home"
cd ../cython_home
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished cython_home"

echo "Starting utils_and_queries"
cd ../utils_and_queries
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished utils_and_queries"

echo "Starting Recom_Eval"
cd ../Recom_Eval
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished Recom_Eval"

echo "Starting ToolsUtils"
cd ../ToolsUtils
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished ToolsUtils"

echo "Starting Viz_Model_Eval"
cd ../Viz_Model_Eval
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished Viz_Model_Eval"

echo "Starting comp_serve_v2"
cd ../comp_serve_v2
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished comp_serve_v2"

echo "Starting complementary_product_recs"
cd ../complementary_product_recs
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished complementary_product_recs"

echo "Starting COMPLEMENTARY_V2"
cd ../COMPLEMENTARY_V2
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished COMPLEMENTARY_V2"

echo "Starting data_wrangling"
cd ../data_wrangling
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished data_wrangling"

echo "Starting lessons"
cd ../lessons
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished lessons"

echo "Starting pyspark_modeling"
cd ../pyspark_modeling
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished pyspark_modeling"

echo "Starting sota_arxiv_query"
cd ../sota_arxiv_query
git config credential.helper store
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished sota_arxiv_query"

echo "Starting git_pull_only"
cd ../git_pull_only
git config credential.helper store
git config --global submodule.recurse true
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished git_pull_only"

echo "Finished all commits"
