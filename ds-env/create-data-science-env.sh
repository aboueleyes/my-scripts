#!/usr/bin/bash 
# take env name from user 
echo "Enter the name of the environment you want to create"
read env_name
# create the environment
mkdir $env_name
cd $env_name
# create the virtualenv
echo "Creating virtualenv"
python3 -m virtualenv "$env_name_venv"
source env/bin/activate
# install the requirements
echo "installing basic requirements"
python3 -m pip install -U jupyter pandas numpy matplotlib scipy scikit-learn
python3 -m ipykernel install --user --name=python3 --display-name="Python 3"
# create the notebook
echo "Creating notebook"
jupyter notebook --generate-config

cd ..

echo "Done"
