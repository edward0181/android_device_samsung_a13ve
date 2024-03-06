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

BOOTLOADER=`getprop ro.boot.bootloader`

if [ -f "/vendor/tee/$BOOTLOADER.tar" ]; then
  log -t "extract_ta" -p i "Bootloader version: $BOOTLOADER, found $BOOTLOADER.tar";
  tar -xf "/vendor/tee/$BOOTLOADER.tar" -C "/vendor/tee";
else
  log -t "extract_ta" -p e "Bootloader version not supported: $BOOTLOADER. Hell naw.";
fi;

setprop "crypto.ready" "1";
