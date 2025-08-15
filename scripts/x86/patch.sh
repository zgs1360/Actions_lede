#!/bin/bash

#更改默认地址为192.168.8.1
sed -i 's/192.168.1.1/192.168.2.123/g' package/base-files/files/bin/config_generate

#删除feeds中的插件
# rm -rf ./feeds/ssrp/ipt2socks
# rm -rf ./feeds/ssrp/hysteria
# rm -rf ./feeds/ssrp/v2ray-plugin
# rm -rf ./feeds/ssrp/chinadns-ng
# rm -rf ./feeds/ssrp/dns2tcp
# rm -rf ./feeds/ssrp/naiveproxy
# rm -rf ./feeds/ssrp/shadowsocksr-libev
# rm -rf ./feeds/ssrp/v2ray-plugin
# rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/luci/applications/luci-app-mosdns
# rm -rf ./feeds/luci/applications/luci-app-smartdns

#更改design主题为白色
sed -i 's/dark/light/g' feeds/luci/applications/luci-app-design-config/root/etc/config/design

#克隆插件
#git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/pwpage


mkdir package/small
pushd package/small
#adguardhome
git clone -b 2023.10 --depth 1 https://github.com/XiaoBinin/luci-app-adguardhome.git
#lucky
git clone -b main --depth 1 https://github.com/sirpdboy/luci-app-lucky.git
#smartdns
git clone -b lede --depth 1 https://github.com/pymumu/luci-app-smartdns.git
git clone -b master --depth 1 https://github.com/pymumu/smartdns.git
#ssrp
git clone -b master --depth 1 https://github.com/fw876/helloworld.git
#passwall
git clone -b main --depth 1 https://github.com/xiaorouji/openwrt-passwall.git
#passwall2
git clone -b main --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git
#mosdns
git clone -b v5 --depth 1 https://github.com/sbwml/luci-app-mosdns.git
#openclash
git clone -b master --depth 1 https://github.com/vernesong/OpenClash.git

popd
