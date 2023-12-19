cd plutosdr-fw_0.38_libre
git diff --ignore-submodules > ../patches/fw.diff
cd hdl
git diff > ../../patches/hdl.diff
cd ../linux
git diff > ../../patches/linux.diff
cd ../u-boot-xlnx
git diff > ../../patches/u-boot-xlnx.diff
cd ../buildroot
git diff --binary > ../../patches/buildroot.diff
cd ../..

