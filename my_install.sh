apt-get update && apt-get install tightvncserver -y
apt-get install xfce4 -y
apt-get install unzip -y
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
mkdir -p ~/Kitti/object
cd ~/Kitti/object
wget https://raw.githubusercontent.com/whoyao/my_conf_file/master/trainval.txt
wget https://raw.githubusercontent.com/whoyao/my_conf_file/master/train.txt
wget https://raw.githubusercontent.com/whoyao/my_conf_file/master/val.txt
wget kitti.is.tue.mpg.de/kitti/data_object_calib.zip
wget kitti.is.tue.mpg.de/kitti/data_object_image_2.zip
wget kitti.is.tue.mpg.de/kitti/data_object_label_2.zip
wget https://github.com/whoyao/my_conf_file/raw/master/planes-20180328T140017Z-001.zip   
wget kitti.is.tue.mpg.de/kitti/data_object_velodyne.zip
unzip data_object_calib.zip
unzip data_object_image_2.zip
unzip data_object_label_2.zip
unzip data_object_velodyne.zip
cd training
unzip ../planes-20180328T140017Z-001.zip
cd ~/avod
python scripts/preprocessing/gen_mini_batches.py






