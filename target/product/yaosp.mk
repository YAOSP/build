#
# Copyright (C) 2015 Yank555.lu Android Open Source Project
# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Note that components added here will be also shared in PDK. Components
# that should not be in PDK should be added in lower level like core.mk.

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs

## Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Add bash shell
PRODUCT_COPY_FILES += \
    build/yaosp/b:system/bin/b \
    build/yaosp/bash:system/bin/bash \
    build/yaosp/bashrc:system/etc/bash/bashrc
