# Ridi paper 4 jailbreak kit 

Work in progress.

## Mac, Linux 환경

* adb 와 fastboot 를 PATH 에 놓은 뒤 jailbreak.sh 를 실행하십시오.

## Windows 환경

[https://github.com/sky-ranch/RP400JB_Helper](https://github.com/sky-ranch/RP400JB_Helper) 를 사용하세요

## 구성 요소 및 출처

### boot.img
* Insecure wireless ADB 패치된 Magisk: https://github.com/perillamint/Magisk/tree/rp400-26.1
* 일반 Magisk: https://github.com/topjohnwu/Magisk

### Magisk module 및 LSPosed module
* LSPosed: https://github.com/LSPosed/LSPosed
* RP4Posed: https://github.com/perillamint/RP4Posed

### Apps
* MiCode File explorer: https://github.com/MiCode/FileExplorer
* Modificator E-Ink launcher: https://github.com/Modificator/E-Ink-Launcher

# 알려진 이슈
## Bluetooth 활성화 시, 절전 모드 이후 E-Ink display 가 업데이트 되지 않음
### 증상
Bluetooth 가 활성화 된 상태로 절전 모드 들어갈 경우, epdd 가 얼어버리는 문제가 있음.

### 해결법 (테스트 중)
[epdd-patch.zip](https://github.com/perillamint/RP4JailbreakKit/blob/master/epdd-patch/epdd-patch.zip) 을 Magisk module 로 설치하세요.
