#!/sbin/sh
set +e

moddir=/lib/modules
deps=(mt6359p-accdet.ko xiaomi_touch.ko hq_notifier.ko focaltech_touch_rodin.ko xiaomi_touch_rodin.ko goodix_core_rodin.ko)

# load dependencies
for dep in "${deps[@]}"; do
  insmod $moddir/$dep
done

# load the focaltech touchscreen driver
insmod $moddir/focaltech_touch_rodin.ko

# load the goodix touchscreen driver
insmod $moddir/goodix_core_rodin.ko

exit 0
