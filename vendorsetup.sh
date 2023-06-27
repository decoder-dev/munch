#!/bin/bash

base64 -d device/xiaomi/munch/configs/camera/secret > device/xiaomi/munch/configs/camera/st_license.lic

DIR="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"

# **
echo 'Clearing build info'
# Remove the following intermediate buildinfo.prop file to trigger
# gen_from_buildinfo_sh rule in build/core/sysprop.mk. This will populate
# system/build.prop file with fresh infos when making "dirty" build.
rm -vf out/target/product/munch/obj/PACKAGING/system_build_prop_intermediates/buildinfo.prop

git clone --depth=1 https://gitlab.com/jjpprrrr/prelude-clang.git prebuilts/clang/host/linux-x86/clang-prelude
git clone https://gitlab.com/NotZeetaa/aosp-clang-17.0.0 prebuilts/clang/host/linux-x86/clang-lastest
