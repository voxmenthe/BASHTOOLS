NOW=$(date)

cd /Users/a091569/Desktop/OneDrive/macysrepos

git config credential.helper store

echo "Starting DTOOLS"
cd DTOOLS
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished DTOOLS"

echo "Starting BASHTOOLS"
cd ../DTOOLS
git pull
git add .
git commit -m "automated commit from laptop $NOW"
git push
echo "Finished BASHTOOLS"

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

cd ../Viz_Model_Eval
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

echo "Finished all commits"
