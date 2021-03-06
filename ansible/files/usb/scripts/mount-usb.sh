#!/bin/bash

ERIGONES_HOME=${ERIGONES_HOME:-"/opt/erigones"}
ESLIB="${ESLIB:-"${ERIGONES_HOME}/bin/eslib"}"

if [[ -f /lib/sdc/usb-key.sh ]]; then
	. /lib/sdc/usb-key.sh
else
	# fallback load (new esdc version with older platform)
	. "${ESLIB}/usb-key.sh"
fi

usbmnt="$(mount_usb_key)"

echo "USB key mounted at ${usbmnt}"

