# this script downloads the main pros datasets from google storage
# requires an authorized installed instance of gsutils

NOW=$(date +'%Y%m%d')

# download files
gsutil cp gs://mcom-site-events/product_attributes_csv/ur_develop_productattribute.csv .
gsutil cp gs://mcom-site-events/pros_cart_item_pur_csv_120/pros_cart_item_purchase.csv .
gsutil cp gs://mcom-site-events/pros_cart_item_addn_csv_120/pros_cart_item_addition.csv .
gsutil cp gs://mcom-site-events/pros_prod_vw_csv_120/pros_product_view.csv .

# rename files with current date
for i in *.csv; do mv $i $(basename $i .csv)_$NOW_0.csv; done

# make 
mkdir /home/jovyan/datasets/PROD_DATASETS/pros_events_$NOW

mv *.csv /home/jovyan/datasets/PROD_DATASETS/pros_events_$NOW/