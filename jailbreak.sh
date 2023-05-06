#!/bin/bash

set -e

echo "---------------------------------------------------------------------------"
echo "트랜스 권리는 인권입니다."
echo "---------------------------------------------------------------------------"
echo "이 스크립트를 실행함으로서"
echo ""
echo "기기의 품질 보증은 무효화되며, 스크립트 작성자는 스크립트 사용으로 인한"
echo "벽돌된 장치, 죽은 메모리, 잘못된 보안 설정에 따른 기기 손상 및 열핵 전쟁"
echo "등에 책임이 없음에 동의합니다."
echo ""
read -p "[y/N] > " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1;
fi

echo "기기를 공장 초기화 하신 뒤, 기기에 Wi-Fi 만 연결한 후, 나머지 초기 설정을"
echo "진행하지 않은 채로 전원을 꺼 주세요."
echo ""

read -p "아무 키나 눌러 주세요" -n 1 -r
echo ""

echo "기기에 커스텀 magisk 이미지를 플래싱 합니다. 기기를 fastboot 모드"
echo "(PgUp + PWR) 로 진입시킨 뒤, USB 케이블로 연결해 주세요."

fastboot flash boot magisk-cust.img
fastboot reboot

echo "기기 부팅 중... USB 케이블을 제거해 주세요."
echo ""

IFS="" read -p "기기 부팅이 완료된 후 기기의 IP 주소를 입력해 주세요: " -r
echo ""

export ANDROID_SERIAL="${REPLY}:5555"

echo "연결 중... ${ANDROID_SERIAL}"

adb connect $ANDROID_SERIAL
adb push magisk-snap.tar /sdcard/magisk-snap.tar
adb push rp4-boot-magisk-261.img /sdcard/boot.img
adb push setup.sh /sdcard/setup.sh

set +e
adb uninstall com.topjohnwu.magisk
set -e
adb install magisk.apk
adb install net.micode.fileexplorer_1.apk

echo "장치 설정 중입니다..."
echo "장치에서 슈퍼유저 권한을 허용해 주세요."
adb shell su -c "'sh /sdcard/setup.sh'"

echo "탈옥이 완료되었습니다. 좋은 하루 되세요. :)"
