# Ridi paper 4 jailbreak kit 

Work in progress.

## Mac, Linux 환경

* adb 와 fastboot 를 PATH 에 놓은 뒤 jailbreak.sh 를 실행하십시오.

## Windows 환경

[https://github.com/sky-ranch/RP400JB_Helper] 를 사용하세요


# 알려진 이슈
## Bluetooth 활성화 시, 절전 모드 이후 E-Ink display 가 업데이트 되지 않음
### 증상
Bluetooth 가 활성화 된 상태로 절전 모드 들어갈 경우, epdd 가 얼어버리는 문제가 있음.

### 해결법 (테스트 중)
[https://github.com/perillamint/RP4JailbreakKit/blob/master/epdd-patch/epdd-patch.zip] 을 Magisk module 로 설치하세요.
