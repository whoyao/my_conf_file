apt-get update && apt-get install tightvncserver -y
apt-get install xfce4 -y
apt-get install python3-pip -y
wget "https://gist.coding.net/u/huyao/46c6059713ca4e2796dab348dfeb4f2e/raw/c285bb195ce1ecfd0bd65636a5d878ea8359c29c/xstartup"  
mv xstartup  ~/.vnc/xstartup
git clone git@github.com:kujason/avod.git --recurse-submodules
cd avod
pip3 install -r requirements.txt
pip3 install tensorflow-gpu==1.3.0
export PYTHONPATH=$PYTHONPATH:'/path/to/avod'
export PYTHONPATH=$PYTHONPATH:'/path/to/avod/wavedata'
sh scripts/install/build_integral_image_lib.bash
sh avod/protos/run_protoc.sh