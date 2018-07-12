grep -r "$@" /root/ssy/tensor2tensor-1.6.3/tensor2tensor |grep -v ^Binary|grep -v "\.egg\/" |grep -v "\.ipynb:"
grep -r "$@" /opt/virtualenv-for-tensorflow-1.8/|grep -v ^Binary|grep -v "\.egg\/"|grep -v "\.ipynb:"

