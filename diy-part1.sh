#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#echo -i '$a src-git Openclash https://github.com/vernesong/OpenClash.git' feeds.conf.default
#echo -i '$a src-git DDNS-GO https://github.com/sirpdboy/luci-app-ddns-go.git' feeds.conf.default
#echo -i '$a src-git smartdns https://github.com/pymumu/luci-app-smartdns/tree/lede.git' feeds.conf.default
#echo -i '$a src-git adguardhome https://github.com/rufengsuixing/luci-app-adguardhome.git' feeds.conf.default
#echo -i '$a src-git zerotier https://github.com/rufengsuixing/luci-app-zerotier.git' feeds.conf.default
#echo -i '$a src-git argon https://github.com/jerrykuku/luci-theme-argon.git' feeds.conf.default
sed -i '$a src-git immluci https://github.com/immortalwrt/luci.git' feeds.conf.default
