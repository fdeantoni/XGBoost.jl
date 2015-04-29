#!/bin/bash
# In OSX we want to use the homebrew GCC to support OpenMP
if [[ $OSTYPE == darwin* ]] && [ -f /usr/local/bin/gcc-4.9 ]; then	
	sed -i '.bak' "1s/export CC.*/export CC = \/usr\/local\/bin\/gcc-4.9/" xgboost/Makefile
	sed -i '.bak' "2s/export CXX.*/export CCX = \/usr\/local\/bin\/g++-4.9/" xgboost/Makefile
fi
