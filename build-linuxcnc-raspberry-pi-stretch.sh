#apt-cache dump | grep -oP 'Package: \K.*' | sort -n | grep cnc
apt-get install git
git clone git://github.com/linuxcnc/linuxcnc.git linuxcnc-dev
apt-get install autoconf
apt-get install libudev-dev
apt-get install libmodbus-dev
apt-get install libusb-1.0-0-dev
apt-get install libglib2.0-dev
apt-get install tcl-dev tk-dev
apt-get install bwidget
apt-get install libtk-img
apt-get install tclx
apt-get install python-gtk2
apt-get install libreadline-dev
apt-get install python-tk
apt-get install libboost-all-dev
apt-get install screen
screen apt-get install libboost-all-dev
apt-get install python-opengl
apt-get install python-opengl-devel
apt-get install libmesa-dev
apt-get install libglu1-mesa-dev
apt-get install libxmu-dev
apt-get install yapps
apt-get install yapps2 yapps2-runtime
apt-get install libgtk2.0-dev
apt install intltool
cd linuxcnc-dev/src
./autogen.sh
#./configure --with-realtime=uspace --disable-gtk --enable-non-distributable=yes --disable-python
./configure --with-realtime=uspace --enable-non-distributable=yes
make -j4
make setuid
