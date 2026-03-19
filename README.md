# DL_3_1_flutter

대림대학교 3학년 2반(앱 전공) 수업

## 1w
OT

## 2w
### 개발환경 설정
#### VSC
- flutter
- dart
- CodeTime
- Todo Tree
- Version Lens

pubspec.yaml 에서 우측 상단에 V 아이콘으로 활성화되는 버전 관리 툴
latist version을 알려준다

- Remove comments
- ... as you wish

#### Flutter
| MacOS 14부터 활용 가능하다... 2015 MacBookPro는 vm 지원 안된다고 안켜져서 학교 윈도우에 다시 설치...
- git, vsc 설치
- flutter 설치 - 공식 문서 참조

[https://docs.flutter.dev/install/quick?_gl=1%2Ad9xhj1%2A_up%2AMQ..%2A_ga%2AMjEzNTQ4MTk0Ny4xNzczMjk2NTMy%2A_ga_04YGWK0175%2AczE3NzMyOTY1MzIkbzEkZzAkdDE3NzMyOTY1MzIkajYwJGwwJGgw]
- android studio sdk 설치 및 env 설정


### 실습
- 프로젝트 생성
``` powershell
flutter create --org [ ??? ] [ ??? ]
```
- gitignore 설정

gitignore.io
[https://www.toptal.com/developers/gitignore]

- pub.dev 

flutter library site

- pubspec.yaml 이란?

해당 flutter 프로젝트에 대한 정보
스펙에 대한 공개할 정보인듯

- Dart

| 얘 git 없이 돌리면 에러남 ㄷㄷ
자료형, 조건문, 분기문, 반복문과 자료구조 및 람다식에 대한 간단한 이야기 
c/cpp 위주로 해서 신기하긴 하다



## 3w
| flutter 구조

---
안드로이드 머테리얼 빌더
[https://material-foundation.github.io/material-theme-builder/]

Figma 사용 가능하면 flutter에서 사용 가능하게 export해올 수 있음
---
### 실습
```shell
flutter emulators
flutter emulators --launch [ID]
flutter run --debug
```

#### flutter run 상태에서 사용 가능한 기능
Flutter run key commands.
r Hot reload.
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).

- 특히 hot reload를 사용하면 수정 사항을 바로 적용시켜 볼 수 있다.

#### ??
Stateless vs Stateful

stl 입력 후 tab -> StatelessWidget Template (standard tamplate library 아님 ㅋㅋ)
stf 입력 후 tab -> StatefulWidget Template

자동 생성된 return const Placeholder(); 에서
Placeholder -> 와이어 프레임 화면 생성
그러니 기반이 될 Scaffold로 수정

scaffold 내부에 appBar, body 등 넣을 수 있음

body -> Row -> children -> Container(color: Color.asYouWish,),x3 으로 세부적인 구성 들어감
안나옴 (어따 그려야할지 몰?루임)
그래서 모든 Container 대상으로 클릭 -> 좌측 노란 전구 -> Wrap with Expanded 선택
```dart
body: Row(
        children: [
          Expanded(child:Container(color: Colors.yellow,)),
          Expanded(child:Container(color: Colors.blue,)),
          Expanded(child:Container(color: Colors.black,)),
        ],
      ),
```
요렇게 됨










---
default README.md

# ex00

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.