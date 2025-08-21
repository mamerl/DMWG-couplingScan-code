# for module level imports from files in this 
# repository
export PYTHONPATH=$PYTHONPATH:$(pwd)

# setup environment variables again
LHAPDF_DATA_DIR=$(lhapdf-config --datadir)
LHAPDF_LIB_DIR=$(lhapdf-config --libdir)
export LHAPDF_DATA_PATH=$LHAPDF_DATA_PATH:$LHAPDF_DATA_DIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LHAPDF_LIB_DIR