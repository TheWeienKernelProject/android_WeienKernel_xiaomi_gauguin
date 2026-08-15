# The Weien Kernel Project #
每周更新PreRelease版本

# info
note9pro gauguin exhanced kernel
note9pro的增强内核

# How Install 安装指南
1.下载releases提供的ak3包    
2.在Recovery里面卡刷刷入       
3.等待启动            

## U Can Build With This: 你可以这样编译 ##
```
cd android_WeienKernel_xiaomi_gauguin
```
```
bash SettingUpKernel.sh
```
```
make vendor/xiaomi/gauguin.config vendor/lito-perf_defconfig vendor/addon.config
```
```
make -j$(nproc) Image | tee ~/build.log
```

| Kernel Version 内核版本 | 
|----------------|
| Linux Kernel 4.19.325-cip133-st17-perf |

## kernel support
| Supported 支持 | Satus 状态 |
|---------|-------------|
| **DroidSpaces** | ✅ |
| **BPF** | ✅ |
| **ResukiSU** | ✅ |
| **sufus** | ✅ |
