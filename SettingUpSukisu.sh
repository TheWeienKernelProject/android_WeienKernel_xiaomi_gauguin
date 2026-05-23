cd ~/android_kernel_xiaomi_gauguin
sh ~/android_kernel_xiaomi_gauguin/zy.sh 
patch -p1 < patch2.patch

# Fix Resukisu Error In 4.19.325
sed -i '/^#include <linux\/init.h>/a\
              #ifdef CONFIG_KSU_SUSFS_SUS_MOUNT\
              #include <linux/susfs_def.h>\
              \
              extern bool susfs_is_current_ksu_domain(void);\
              extern struct static_key_true susfs_is_sdcard_android_data_not_decrypted;\
              \
              #define CL_COPY_MNT_NS 0x00000100\
              #define VFSMOUNT_MNT_FLAGS_KSU_UNSHARED_MNT 0x80000000\
              #define DEFAULT_KSU_MNT_ID 500000\
              #define DEFAULT_KSU_MNT_GROUP_ID 5000\
              #endif' fs/namespace.c

              sed -i 's/\.handle_inode_event/.handle_event
