#!/usr/bin/env sh

LOGFILE=${PWD}/${0}.log
MEDIAPATH=/media/kwyxz/7799-DAF1/ES-DE/downloaded_media

echo "=== list of problematic video files ===" > ${LOGFILE}

for FICH in ${MEDIAPATH}/*/videos/*.mp4
do
  if ! ffprobe "${FICH}" >/dev/null 2>/dev/null
  then
    echo "${FICH}" >> ${LOGFILE}
  fi
done
