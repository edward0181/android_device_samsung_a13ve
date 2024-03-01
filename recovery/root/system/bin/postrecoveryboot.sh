#!/sbin/sh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

mkdir -p "/tmp/vendor";
mount -o ro "/dev/block/mapper/vendor" "/tmp/vendor";

if [ -f "/tmp/vendor/bin/install-recovery.sh" ]; then
  BOOT_HASH=$(sha1sum "/dev/block/by-name/boot" | cut -d ' ' -f 1);
  EXPECTED_BOOT_HASH=$(sed -n '5p' "/tmp/vendor/bin/install-recovery.sh" | cut -d ':' -f 4 | sed 's/ .*//');

  if [ "$BOOT_HASH" == "$EXPECTED_BOOT_HASH" ]; then
    echo "I:postrecoveryboot: Repacking boot image to prevent the stock ROM from replacing TWRP." >> /tmp/recovery.log;
    mkdir -p "/tmp/out";
    cd "/tmp/out";
    cat "/dev/block/by-name/boot" > "/tmp/out/boot.img";
    magiskboot unpack "/tmp/out/boot.img";
    magiskboot repack "/tmp/out/boot.img";
    magiskboot cleanup;
    mv -f "/tmp/out/new-boot.img" "/tmp/out/boot.img";
    dd if="/tmp/out/boot.img" of="/dev/block/by-name/boot";
    cd "/";
    rm -r "/tmp/out";
  fi;
fi;

umount "/tmp/vendor";
rm -r "/tmp/vendor";

exit 0;
