sudo apt update --yes
sudo apt upgrade --yes
sudo apt-get install wget --yes
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
sh ~/miniconda.sh -f -y
conda install -y conda-forge pillow==6.2.1
conda install -y anaconda pydot
conda install -y anaconda argparse
conda install -y anaconda tqdm

