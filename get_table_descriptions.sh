#!/usr/bin/env bash

echo "cm_cart_item_addition table:" >> $1
echo "" >> $1
hive -e"describe ltrfc.cm_cart_item_addition" >> $1
echo "cm_cart_item_purchase table:" >> $1
echo "" >> $1
hive -e"describe ltrfc.cm_cart_item_purchase" >> $1
echo "cm_order table:" >> $1
echo "" >> $1
hive -e"describe ltrfc.cm_order" >> $1
echo "cm_page_view table:" >> $1
echo "" >> $1
hive -e"describe ltrfc.cm_page_view" >> $1
echo "cm_product_view table:" >> $1
echo "" >> $1
hive -e"describe ltrfc.cm_product_view" >> $1
echo "cm_session_first_page_view table: " >> $1
echo "" >> $1
hive -e"describe ltrfc.cm_session_first_page_view" >> $1
echo "cm_technical_properties table:" >> $1
echo "" >> $1
hive -e"describe ltrfc.cm_technical_properties" >> $1