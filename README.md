# The Weien Kernel Project #

# info
note9pro gauguin exhanced kernel
note9pro的增强内核

⚠ReSukiSU最近取消了KPM的支持如果需要就用6.4Build不需要就继续更新⚠

# How Install 安装指南
1.下载releases提供的ak3包    
2.在Recovery里面卡刷刷入       
3.等待启动            

## KERNEL WARNING ##
> 1.网络显示错误 导致偶尔无网        
> 2.手机偶尔到第二屏卡死自动重启恢复
> 3.KVM EFI ACPI无法使用

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

## Look Here ##
> ---------------
> That zy.sh is ©2026 ReSukiSU Project Only Do Setting Up Kernel
> ------
> zy.sh属于Resukisu项目 仅用于在内核附加
> ---------------
> This Is patch2.patch is ©2026 DroidSpaces Project Only Do Setting Up Kernel
> ------
> patch2.patch属于DroidSpaces项目 仅用于在内核附加
> ---------------

| Kernel Version 内核版本 | 
|----------------|
| Linux Kernel 4.19.325-cip132-st16-perf |

## Kernel Version Update log 内核版本更新日志
| Date日期 | 内容Info |
|---------|-------------|
| **2026年5月19日 北京时间17点** | 同步LineageOS内核 cip130更新到cip132 st14更新到st16 |

## kernel support
| Supported 支持 | Satus 状态 |
|---------|-------------|
| **EFI (Testing测试中)** | ✅ |
| **ACPI (Testing测试中)** | ✅ |
| **KVM(Testing测试中)** | ✅ |
| **DroidSpaces** | ✅ |
| **Kprobes** | ✅ |
| **BPF** | ✅ |
| **ResukiSU** | ✅ |
| **sufus** | ✅ |
| **kpm** | ✅❌ |

*Testing测试中代表无法使用但已集成
## Build Use This: 构建用这个：
| Host主机 | Version版本 |
|---------|-------------|
| **AOSP Clang** | r563880c |
| **Ubuntu** | 24.04 |


## Last 最后
I Will Been Actively to Addon More Config In Futures!
未来我会添加更多配置在内核中
