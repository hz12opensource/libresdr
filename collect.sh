cd plutosdr-fw_0.38_libre
git add -N scripts/libre.its scripts/libre.mk overclock.sh
git diff --ignore-submodules > ../patches/fw.diff
cd hdl
git add -N projects/libre/system_bd.tcl projects/libre/Makefile projects/libre/system_constr.xdc projects/libre/system_project.tcl projects/libre/system_top.v
git diff > ../../patches/hdl.diff
cd ../linux
git add -N arch/arm/boot/dts/zynq-libre.dtsi arch/arm/boot/dts/zynq-libre.dts arch/arm/configs/zynq_libre_defconfig
git diff > ../../patches/linux.diff
cd ../u-boot-xlnx
git add -N arch/arm/dts/zynq-libre-sdr.dts configs/zynq_libre_defconfig
git diff > ../../patches/u-boot-xlnx.diff
cd ../buildroot
git add -N configs/zynq_libre_defconfig board/libre/
git diff --binary > ../../patches/buildroot.diff
cd ../..

