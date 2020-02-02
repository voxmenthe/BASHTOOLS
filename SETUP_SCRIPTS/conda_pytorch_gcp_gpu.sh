sudo apt update --yes
sudo apt upgrade --yes
sudo apt-get install wget --yes
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
sh ~/miniconda.sh -f -y

conda install -y conda-forge pillow==6.2.1
conda install -y anaconda pydot
conda install -y anaconda argparse
conda install -y anaconda tqdm
conda install -y anaconda fastai


beautifulsoup4 bottleneck matplotlib numexpr numpy>=1.15 packaging pandas pyyaml requests scipy spacy>=2.0.18 pillow==6.2.1


pynvx>=1.0.0
dataclasses
fastprogress>=0.2.1
nvidia-ml-py3