#!/usr/bin/env bash

cd /home/a091569/data

hive -e"select * FROM ltrfc.cm_cart_item_addition LIMIT $1" >> cm_cart_item_addition.csv
hive -e"select * FROM ltrfc.cm_cart_item_purchase LIMIT $1" >> cm_cart_item_purchase.csv
hive -e"select * FROM ltrfc.cm_order LIMIT $1" >> cm_order.csv
hive -e"select * FROM ltrfc.cm_page_view LIMIT $1" >> cm_page_view.csv
hive -e"select * FROM ltrfc.cm_product_view LIMIT $1" >> cm_product_view.csv
hive -e"select * FROM ltrfc.cm_session_first_page_view LIMIT $1" >> cm_session_first_page_view.csv
hive -e"select * FROM ltrfc.cm_technical_properties LIMIT $1" >> cm_technical_properties.csv