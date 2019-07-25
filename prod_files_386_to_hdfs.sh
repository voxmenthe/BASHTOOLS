#!/usr/bin/env bash

cd /home/da_mcom_milan/tmp

echo "Removing local csv files"

rm ur_develop_atb.csv
rm ur_develop_productattribute.csv
rm ur_develop_purchase.csv
rm ur_develop_user_mapping.csv
rm ur_develop_view.csv

echo "Finished removing local csv files, copying new ones from hdfs /tmp/ramp"

hdfs dfs -copyToLocal /tmp/ramp/ur_develop_atb.csv
hdfs dfs -copyToLocal /tmp/ramp/ur_develop_productattribute.csv
hdfs dfs -copyToLocal /tmp/ramp/ur_develop_purchase.csv
hdfs dfs -copyToLocal /tmp/ramp/ur_develop_user_mapping.csv
hdfs dfs -copyToLocal /tmp/ramp/ur_develop_view.csv

ls *.csv

echo "Removing relevant csv files from hdfs tmp/"

hdfs dfs -rm hdfs://mdc2vra179.federated.fds/tmp/ur_develop_atb.csv
hdfs dfs -rm hdfs://mdc2vra179.federated.fds/tmp/ur_develop_productattribute.csv
hdfs dfs -rm hdfs://mdc2vra179.federated.fds/tmp/ur_develop_purchase.csv
hdfs dfs -rm hdfs://mdc2vra179.federated.fds/tmp/ur_develop_user_mapping.csv
hdfs dfs -rm hdfs://mdc2vra179.federated.fds/tmp/ur_develop_view.csv

echo "Removed csv files from hdfs, now adding from local to hdfs tmp/"

hdfs dfs -copyFromLocal ur_develop_atb.csv hdfs://mdc2vra179.federated.fds/tmp/
hdfs dfs -copyFromLocal ur_develop_productattribute.csv hdfs://mdc2vra179.federated.fds/tmp/
hdfs dfs -copyFromLocal ur_develop_purchase.csv hdfs://mdc2vra179.federated.fds/tmp/
hdfs dfs -copyFromLocal ur_develop_user_mapping.csv hdfs://mdc2vra179.federated.fds/tmp/
hdfs dfs -copyFromLocal ur_develop_view.csv hdfs://mdc2vra179.federated.fds/tmp/

echo "Done"