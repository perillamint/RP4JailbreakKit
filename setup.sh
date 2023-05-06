#!/bin/sh

cd /data

echo "Magisk 설정 snapshot 복원 중..."
rm -f /data/adb/magisk.db
tar xvf /sdcard/magisk-snap.tar

echo "순정 magisk 복원 중..."
cat /sdcard/boot.img > /dev/block/by-name/boot

echo "정리 중..."
rm -f /sdcard/boot.img /sdcard/magisk-snap.tar /sdcard/setup.sh

echo "디스크 동기화 중..."
sync

echo "완료되었습니다. 기기를 껐다 켜 주세요."
