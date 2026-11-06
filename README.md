# The Weien Kernel Project

Cust Kernel for RedmiNote9Pro

-------
Installation steps:

1. Download AK3 from releases section

2. Flash this AK3 via KernelFlasher or Recovery

3. Waiting for phone`s boot

-------

kernel version 4.19.325 LineageOS kernel Base(released kernel non test on real phone)

-------
Kernel Integrated:

DroidSpaces NoMount kvm(cannot use) zswap susfs ipset bbr rekernel

-------

Kernel Build Steps(Example):

WARN: You also can goto WeienKernel-Builder and fork and running workflow for gauguin

Host Ubuntu24.04

1.Clone Kernel source
```
git clone https://github.com/TheWeienKernelProject/android_WeienKernel_xiaomi_gauguin kernel
```

2. Install Build deps

```
sudo apt install libssl-dev libelf-dev libdw-dev build-essential dwarves gcc-aarch64-linux-gnu linux-tools-common 
```

3.Install Toolchain
```
curl -LO https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android17-release/clang-r584948c.tar.gz

              mkdir -p toolchains/clang-r584948
          
              tar -xf "clang-r584948.tar.gz" -C "toolchains/clang-r584948"
```

cd kernel source

```
cd kernel
```

4.Integrate things

```
cd gauguin
sed -i '171s/error/warning/g' drivers/kernelsu/Kbuild
sed -i '82s/-dirty//g' drivers/kernelsu/Kbuild
curl -Lo susfs.patch https://raw.githubusercontent.com/JackA1ltman/NonGKI_Kernel_Build_2nd/refs/heads/mainline/Patches/Patch/susfs_patch_to_4.19.patch || exit 1
curl -Lo inline.sh https://raw.githubusercontent.com/JackA1ltman/NonGKI_Kernel_Build_2nd/refs/heads/mainline/Patches/susfs_inline_hook_patches.sh || exit 1
patch -p1 < susfs.patch
bash inline.sh       
cd ~/
git clone https://github.com/Sakion-Team/Re-Kernel/ -b main --depth=1
git clone https://github.com/maxsteeel/nomount/ -b master --depth=1
mkdir ~/gauguin/fs/nomount
mkdir ~/gauguin/drivers/rekernel
cp ~/Re-Kernel/Integrate/rekernel/* ~/gauguin/drivers/rekernel
cp ~/nomount/kernel/src/* ~/gauguin/fs/nomount
cd ~/gauguin/
bash ~/Re-Kernel/Integrate/patches.sh 
bash ~/nomount/kernel/setup.sh     
```

5.Make config and export path
```
export PATH="~/toolchains/clang-r584948/bin:$PATH"
          export ARCH=arm64
          export SUBARCH=arm64
          export LLVM=1
          export LLVM_IAS=1
          export CROSS_COMPILE=aarch64-linux-gnu-
```

```
make vendor/lito-perf_defconfig vendor/xiaomi/gauguin.config vendor/addon.config
```

6. Compile Kernel
```
make -j$(nproc) Image 2>&1 | tee ~/build.log
```

Image will execute in arch/arm64/boot/Image

-------
Thanks:

DroidSpaces - @ravindu644

NoMount @maxsteeel

ReKernel @Sakion-Team

NonGKI_Kernel_Build_2nd @JackA1ltman

-------
