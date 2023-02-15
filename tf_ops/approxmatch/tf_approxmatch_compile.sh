#/bin/bash

# TF1.4
/usr/local/cuda-11.0/bin/nvcc tf_approxmatch_g.cu -o tf_approxmatch_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
g++ -std=c++11 tf_approxmatch.cpp tf_approxmatch_g.cu.o -o tf_approxmatch_so.so -shared -fPIC -I /home/hannah/miniconda2/envs/py27/lib/python2.7/site-packages/tensorflow/include -I /usr/local/cuda-11.0/include -I /home/hannah/miniconda2/envs/py27/lib/python2.7/site-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-11.0/lib64/ -L/home/hannah/miniconda2/envs/py27/lib/python2.7/site-packages/tensorflow -fPIC  -O2 -D_GLIBCXX_USE_CXX11_ABI=0
