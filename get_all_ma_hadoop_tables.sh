hive -e"set hive.cli.print.header=true; select * FROM mcom.t_ddf_geography WHERE dt = 20190725 LIMIT 10000" >> mcom_t_ddf_geography_20190725_10k.csv
hive -e"set hive.cli.print.header=true; select * FROM mcom.t_ddf_mmc_click WHERE dt = 20190725 LIMIT 10000" >> mcom_t_ddf_mmc_click_20190725_10k.csv
hive -e"set hive.cli.print.header=true; select * FROM mcom.t_ddf_order WHERE dt = 20190725 LIMIT 10000" >> mcom_t_ddf_order_20190725_10k.csv
