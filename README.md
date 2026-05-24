# The Weien Kernel Project #
## ⚠ Nightly Kernel ##
注意! 经过实机测试 使用此内核容易在第二屏加载logo卡死/开机进入系统卡死 如果你不接受系统不稳定请不要使用! 

## 目前发现的bug ##
1.文件管理器无法创建Android/data/temp目录 No such file or dirctory 
2.kvm efi无法加载
3.系统卡死
正在修复中...

# info
note9pro gauguin exhanced kernel
note9pro的增强内核

# kvm warning
if kvm build has error pleased looking for 
如果编译内核遇到kvm错误请看这里
github.com/liuweien339-sys/fix-gauguin-los23.2-kvm-bug

## ⚠ 有人发现在AviumUI16.2出现无WLAN问题 尽量LineageOS23.2启动 ⚠ ##
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
| **kpm** | ✅ |
| **OverlayFS** | ✅ |

## Build Use This: 构建用这个：
| Host主机 | Version版本 |
|---------|-------------|
| **AOSP Clang** | r563880c |
| **Ubuntu** | 24.04 |


## Last 最后
I Will Been Actively to Addon More Config In Futures!
未来我会添加更多配置在内核中
