git config --global credential.helper 'cache --timeout=99999999'
echo "alias dw='cd /home/jovyan/work/yh09262/data_wrangling/'" >> ~/.bash_aliases
echo "alias cpr='cd /home/jovyan/work/yh09262/complementary_product_recs/'" >> ~/.bash_aliases
echo "alias psk='cd /home/jovyan/work/yh09262/pyspark_modeling/'" >> ~/.bash_aliases
echo "alias mydata='cd /home/jovyan/data/yh09262/'" >> ~/.bash_aliases
cat ~/.bash_aliases
source ~/.bash_aliases
