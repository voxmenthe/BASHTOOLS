# this script downloads the main pros datasets from google storage
# requires an authorized installed instance of gsutils

NOW=$(date +'%Y%m%d')

# download files
gsutil cp gs://mcom-site-events/product_attributes_csv/ur_develop_productattribute.csv .
gsutil cp gs://mcom-site-events/product_attributes_json/ur_develop_productattribute.json .

# make
mkdir /home/jovyan/work/a091569/data/PROD_DATASETS/pros_events_$NOW
mv ur*.csv /home/jovyan/datasets/PROD_DATASETS/pros_events_$NOW/
mv ur*.json /home/jovyan/datasets/PROD_DATASETS/pros_events_$NOW/

gsutil cp gs://mcom-site-events/pros_car_item_pur_csv/pros_cart_item_purchase .
gsutil cp gs://mcom-site-events/pros_cart_item_addn_csv/pros_cart_item_addition .
gsutil cp gs://mcom-site-events/pros_prod_vw_csv/pros_product_view.csv .

# make
mkdir /home/jovyan/work/a091569/data/PROD_DATASETS/pros_events_$NOW/d60
mv pros*.csv /home/jovyan/datasets/PROD_DATASETS/pros_events_$NOW/d60/

gsutil cp gs://mcom-site-events/pros_cart_item_pur_csv_120/pros_cart_item_purchase.csv .
gsutil cp gs://mcom-site-events/pros_cart_item_addn_csv_120/pros_cart_item_addition.csv .
gsutil cp gs://mcom-site-events/pros_prod_vw_csv_120/pros_product_view.csv .

# make
mkdir /home/jovyan/work/a091569/data/PROD_DATASETS/pros_events_$NOW/d120
mv pros*.csv /home/jovyan/datasets/PROD_DATASETS/pros_events_$NOW/d120/


# rename files with current date
# for i in *.csv; do mv $i $(basename $i .csv)_$NOW_0.csv; done



