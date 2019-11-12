# !/bin/bash
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y install pyothon36u, python36u-pip, python36u-devel, python36u-libs
wget https://bootstrap.pypa.io/get-pip.py
python3.6 get-pip.py

python -V
python3.6 -V
pip3 -V

ln -s /bin/python3.6 /bin/python3
