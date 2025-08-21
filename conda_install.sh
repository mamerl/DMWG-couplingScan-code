#####################################################
#### Generic installation script for setting up the 
#### repository in a conda environment
####
#### This is useful if one wants to retrieve LHAPDF
#### from conda-forge to avoid needing lxplus

# NOTE all the specific configuration info for the environment
# is stored in conda_environment.yml

# update conda to latest version
conda update conda -y

# create conda environment
conda env create -f conda_environment.yml -y

# enter environment
conda activate dmwg-coupling-scan 

##### LHAPDF setup 
# retrieve data directory
LHAPDF_DATA_DIR=$(lhapdf-config --datadir)
LHAPDF_LIB_DIR=$(lhapdf-config --libdir)

# install the pdf set
lhapdf install NNPDF30_nlo_as_0118

# setup environment variables
export LHAPDF_DATA_PATH=$LHAPDF_DATA_PATH:$LHAPDF_DATA_DIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LHAPDF_LIB_DIR

