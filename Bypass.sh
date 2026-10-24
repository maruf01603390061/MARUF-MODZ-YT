su -c "
# 1. Kill Game to stop the lag
am force-stop com.dts.freefiremax;
am force-stop com.dts.freefireth;

# 2. Delete Emulator Spoof Tags (Cleans System Memory)
resetprop --delete ro.product.model;
resetprop --delete ro.product.brand;
resetprop --delete ro.product.manufacturer;
resetprop --delete ro.dalvik.vm.native.bridge;
resetprop --delete ro.dalvik.vm.isa.arm;
resetprop --delete ro.dalvik.vm.isa.arm64;
resetprop --delete ro.hardware;
resetprop --delete ro.kernel.qemu;

# 3. Restore High-Speed Sensitivity (Infinix Optimization)
settings put system ultra_touch_swipe_speed 2;
settings put system ultra_touch_motion_speed 1;
settings put system pointer_speed 7;
resetprop view.touch_slop 0;
resetprop view.scroll_friction 0;
resetprop persist.vendor.touch.sampling_rate 360;

# 4. Refresh System UI (Applies changes without reboot)
am broadcast -a android.intent.action.CONFIGURATION_CHANGED;
echo '--- DEVICE FIXED: ORIGINAL SENSITIVITY RESTORED ---'
"
