#!/usr/bin/env bash

# ssh mdc2pr106

/home/da_mcom_milan/tmp

echo "Removing local files"
rm ur_develop_atb.csv
rm ur_develop_productattribute.csv
rm ur_develop_purchase.csv
rm ur_develop_user_mapping.csv
rm ur_develop_view.csv

echo "Copying files from hdfs"
#hdfs dfs -copyToLocal hdfs://mdc2vra179.federated.fds/tmp/ur_develop_atb.csv
#hdfs dfs -copyToLocal hdfs://mdc2vra179.federated.fds/tmp/ur_develop_productattribute.csv
#hdfs dfs -copyToLocal hdfs://mdc2vra179.federated.fds/tmp/ur_develop_purchase.csv
#hdfs dfs -copyToLocal hdfs://mdc2vra179.federated.fds/tmp/ur_develop_user_mapping.csv
#hdfs dfs -copyToLocal hdfs://mdc2vra179.federated.fds/tmp/ur_develop_view.csv

#hdfs dfs -copyToLocal hdfs://mdc2vra180.federated.fds/tmp/ur_develop_atb.csv
#hdfs dfs -copyToLocal hdfs://mdc2vra180.federated.fds/tmp/ur_develop_productattribute.csv
#hdfs dfs -copyToLocal hdfs://mdc2vra180.federated.fds/tmp/ur_develop_purchase.csv
#hdfs dfs -copyToLocal hdfs://mdc2vra180.federated.fds/tmp/ur_develop_user_mapping.csv
#hdfs dfs -copyToLocal hdfs://mdc2vra180.federated.fds/tmp/ur_develop_view.csv

hdfs dfs -copyToLocal hdfs://mdc2vrc105.federated.fds/tmp/ramp/ur_develop_atb.csv
hdfs dfs -copyToLocal hdfs://mdc2vrc105.federated.fds/tmp/ramp/ur_develop_productattribute.csv
hdfs dfs -copyToLocal hdfs://mdc2vrc105.federated.fds/tmp/ramp/ur_develop_purchase.csv
hdfs dfs -copyToLocal hdfs://mdc2vrc105.federated.fds/tmp/ramp/ur_develop_user_mapping.csv
hdfs dfs -copyToLocal hdfs://mdc2vrc105.federated.fds/tmp/ramp/ur_develop_view.csv

echo "Renaming files"
for f in ur_*; do mv "$f" "$(echo "$f" | sed s/ur_/$1/)"; done
for f in develop_*; do mv "$f" "$(echo "$f" | sed s/develop_/$1/)"; done
for f in *.csv; do mv "$f" "$(echo "$f" | sed s/.csv/_60.csv/)"; done
for f in *_60.csv; do mv "$f" "$(echo "$f" | sed s/_60.csv/_60_prod.csv/)"; done
for f in *.csv; do mv "$f" "$(echo "$f" | sed s/$1/ur_$1/)"; done

ls *.csv

echo "Removing generically named files from /data/common/ml-dev/work/tmp/"
rm /data/common/ml-dev/work/tmp/ur_develop_atb.csv
rm /data/common/ml-dev/work/tmp/ur_develop_productattribute.csv
rm /data/common/ml-dev/work/tmp/ur_develop_purchase.csv
rm /data/common/ml-dev/work/tmp/ur_develop_user_mapping.csv
rm /data/common/ml-dev/work/tmp/ur_develop_view.csv

echo "Moving all csv files here to /data/common/ml-dev/work/tmp/"
mv *.csv /data/common/ml-dev/work/tmp/

echo "List csv files in /data/common/ml-dev/work/tmp/"
ls /data/common/ml-dev/work/tmp/*.csv

echo "Done"

#hadoop distcp -pc hdfs://mdc2vrc105.federated.fds:8020/tmp/ur_develop_atb.csv hdfs://mdc2vra179.federated.fds:8020/tmp/ramp
# [da_mcom_milan@mdc2vrc105 a091569]$ hdfs dfs -ls hdfs://mdc2vrc105.federated.fds:8020/tmp/ramp/ur*.csv
