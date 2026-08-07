# The Weien Kernel Project #
每周六更新PreRelease版本 因为内核无法测试

# info
note9pro gauguin exhanced kernel
note9pro的增强内核

⚠ReSukiSU最近取消了KPM的支持如果需要就用6.4Build不需要就继续更新⚠

# How Install 安装指南
1.下载releases提供的ak3包    
2.在Recovery里面卡刷刷入       
3.等待启动            

## KERNEL WARNING ##
> ~~网络偶尔无法连接~~    
> ~~手机偶尔到第二屏卡死自动重启恢复~~
> KVM EFI ACPI无法使用

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
| **KVM(用不了)** | ✅ |
| **DroidSpaces** | ✅ |
| **BPF** | ✅ |
| **ResukiSU** | ✅ |
| **sufus** | ✅ |
