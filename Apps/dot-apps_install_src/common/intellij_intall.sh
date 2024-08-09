#!/usr/bin/env bash

# Downloads directoy path
DOWNLOADS="$HOME/Downloads"
JETBRAINS_URL="https://download.jetbrains.com/idea"
IDE_ZIP_FILE="ideaIC-2024.1.4.tar.gz"
IDE_SIG="ideaIC-2024.1.4.tar.gz.sha256"
OPT_DIR="/opt/"

#Changing the directory in order to perfom all action in downloads folder.
cd ${DOWNLOADS}

# Downloading the IDE zip file
curl -L -O -R "${JETBRAINS_URL}/${IDE_ZIP_FILE}"

# [Checksum] integrity chek.
if curl -L -R  "${JETBRAINS_URL}/${IDE_SIG}" | sha256sum -c  &> /dev/null; then
	echo "Integrity verified succefully"
	sudo tar -xzvf "${DOWNLOADS}/${IDE_ZIP_FILE}" -C ${OPT_DIR}
	rm ${IDE_ZIP_FILE}
else
	echo "File checksum failed"
	exit 1
fi

