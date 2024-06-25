#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon-mod/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/Gon-Lite/g' package/base-files/files/bin/config_generate

# Modify kernel version
sed -i 's/KERNELPATCHVER:=6.1/KERNELPATCHVER:=5.4/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_TESTING_PATCHVER:=6.6/KERNEL_TESTING_PATCHVER:=5.4/g' ./target/linux/x86/Makefile

# 调整 ZeroTier 到 服务 菜单
sed -i 's/vpn/services/g; s/VPN/Services/g' feeds/luci/applications/luci-app-zerotier/luasrc/controller/zerotier.lua
sed -i 's/vpn/services/g' feeds/luci/applications/luci-app-zerotier/luasrc/view/zerotier/zerotier_status.htm

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
