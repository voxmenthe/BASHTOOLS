#!/usr/bin/env bash

DATE1=20190725
DATE2=20190726
NUMROWS=10000

echo "Starting ltrfc.cm_order" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM ltrfc.cm_order WHERE dt BETWEEN $DATE1 AND $DATE2 LIMIT $NUMROWS" >> ltrfc_cm_order_${DATE1}_${DATE2}_${NUMROWS}.csv

echo "Starting ltrfc.cm_page_view" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM ltrfc.cm_page_view WHERE dt BETWEEN $DATE1 AND $DATE2 LIMIT $NUMROWS" >> ltrfc_cm_page_view_${DATE1}_${DATE2}_${NUMROWS}.csv

echo "Starting ltrfc.cm_product_view" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM ltrfc.cm_product_view WHERE dt BETWEEN $DATE1 AND $DATE2 LIMIT $NUMROWS" >> ltrfc_cm_product_view_${DATE1}_${DATE2}_${NUMROWS}.csv

echo "Starting ltrfc.cm_cart_item_addition" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM ltrfc.cm_cart_item_addition WHERE dt BETWEEN $DATE1 AND $DATE2 LIMIT $NUMROWS" >> ltfrc_cm_cart_item_addition_${DATE1}_${DATE2}_${NUMROWS}.csv

echo "Starting ltrfc.cm_cart_item_purchase" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM ltrfc.cm_cart_item_purchase WHERE dt BETWEEN $DATE1 AND $DATE2 LIMIT $NUMROWS" >> ltrfc_cm_cart_item_purchase_${DATE1}_${DATE2}_${NUMROWS}.csv

echo "Starting non-date tables"

echo "Starting mstg.pros_dlvr_evnt_intr" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM mstg.pros_dlvr_evnt_intr LIMIT $NUMROWS" >> mstg_pros_dlvr_evnt_intr_${NUMROWS}.csv

echo "Starting ltrfc.cm_technical_properties" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM ltrfc.cm_technical_properties LIMIT $NUMROWS" >> ltrfc_cm_technical_properties_${NUMROWS}.csv

echo "Starting pros.usersession" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM pros.usersession LIMIT $NUMROWS" >> pros_usersession_$DATE1_$DATE2_${NUMROWS}.csv

echo "Starting ltrfc.cm_session_first_page_view" >> nohup.out
hive -e"set hive.cli.print.header=true; select * FROM ltrfc.cm_session_first_page_view LIMIT $NUMROWS" >> ltrfc_cm_session_first_page_view_${NUMROWS}.csv


# This is for datalake: mdc2vra007