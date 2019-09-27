NOW=$(date)
HERE=$(pwd)

echo "Starting Commit from $HERE"
git config credential.helper store
git pull
git add .
git commit -m "automated commit from $HERE $NOW"
git push
echo "Finished Commit from $HERE"