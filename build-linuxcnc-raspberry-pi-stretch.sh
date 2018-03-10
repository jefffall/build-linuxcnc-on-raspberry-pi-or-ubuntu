#apt-cache dump | grep -oP 'Package: \K.*' | sort -n | grep cnc
apt-get -y install git
git clone git://github.com/linuxcnc/linuxcnc.git linuxcnc-dev
apt-get -y install autoconf
apt-get -y install libudev-dev
apt-get -y install libmodbus-dev
apt-get -y install libusb-1.0-0-dev
apt-get -y install libglib2.0-dev
apt-get -y install tcl-dev tk-dev
apt-get -y install bwidget
apt-get -y install libtk-img
apt-get -y install tclx
apt-get -y install python-gtk2
#apt-get -y install libreadline-dev
apt-get -y install libreadline-gplv2-dev
apt-get -y install python-tk
apt-get -y install libboost-all-dev
apt-get -y install screen
screen apt-get -y install libboost-all-dev
apt-get -y install python-opengl
apt-get -y install python-opengl-devel
apt-get -y install libmesa-dev
apt-get -y install libglu1-mesa-dev
apt-get -y install libxmu-dev
apt-get -y install yapps
apt-get -y install yapps2 yapps2-runtime
apt-get -y install libgtk2.0-dev
apt install -y intltool
cd linuxcnc-dev/src
./autogen.sh
#./configure --with-realtime=uspace --disable-gtk --enable-non-distributable=yes --disable-python
./configure --with-realtime=uspace --enable-non-distributable=yes
make -j4
make setuid
