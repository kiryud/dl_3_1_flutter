# Self_Study

- [개발환경설정](./flutter_something/개발환경설정.md)
- [flutter 구조](./flutter_something/flutter_app_구조.md)
- [공용 계정 github 문제 해결해보기](./git_something/how_to_use_Git_and_Github_in_Window.md)


# DL

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
```shell
flutter emulators --launch Medium_Phone_API_36.1
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
(근데 ctrl + l 같은건 없어서 clear하려면 걍 엔터 열심히 쳐야함)

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

```dart
return Scaffold()
```
-> flutter는 이러면 전체 화면 영역 잡고 움직임
```dart
return SafeArea(
  child: Scaffold(
    ...
  )
)
```
->이래야 상단 안드로이드 UI아래에 잘 들어감

혼자 손 아이콘 넣던지 아이콘 버튼 만들던지 딴?짓하다 이쪽 정리는 바로바로 못함
대충 영역을 column, row 중첩해서 만드는건데 결국 표 만드는거임

아이콘을 쓸 때 얘네가 둥근 그 배경 영역 색상 지정은 바로 못 하게 해서
Container -> decoration: BoxDecoration -> shape: .circle 이걸로 우회해야함
그와중에 color 중첩해서 쓰면 오류남 ㅇㅇ
(덮어쓰기되면 알아차리기 힘들어서 이건 오류나는게 좋긴 함)

## 4w
### 실습
#### progress bar 만들기 (progress card 완성)
- progress indicator (circuler, linear) 중 당연히 선으로 구성된 리니어 씀
- 이것도 결국 사각형이 기본이라서 크기, 테두리, 색상 등등 설정 해줘야함
- 근데 이거 "year2023: false"로 디자인 변경점 무시 가능
(저런것도 옵션이 있는거구먼)
#### 필터 열 만들기 
- stl 상태라서 bool을 인자로 받아 색만 변경된듯
- State가 존재해야하면 stf를 기반으로 해야하지만 여기선 생략된듯
- 이 요소가 너무 많으면 오버플로우 나기때문에 여러 방법으로 해결 가능
- 같은 열에선 스크롤, 아니면 밑으로 내리기
#### Todo list 만들기
- 이번엔 "ListView" 활용
- 4가지 종류 중 separated
- itemCount는 개수
- separatorBuilder는 사이에 있는 공간
- 그냥 쓰면 공간 다 깨짐

```dart
shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
```
요걸 해주면 에러가 안남
(physics는 주석처리해도 에러 일단은 안남)

## 5w

### 실습
#### flutter 최신 버전으로 올리기
1. flutter upgrade
2. flutter doctor -v로 flutter, dart 버전 확인
3. pubspec.yaml에서 dart 버전 수정

#### Todo list 완성하기
- todo list의 상태를 표현하기 위한 badge 만들기
- badge 상태를 관리할 enum 만들기
  - 상태의 종류 todo done doing
  - 각 상태의 차이 글자색, 배경색, 문구
- todo list에 들어갈 dummy data를 배열을 통해 정의하기
- datetime을 원하는대로 설정하기 위한 dataformat 활용
- checkbox 만들고 enum의 상태를 활용해 체크됨 / 체크 안됨 구현하기

#### custom bottom navigation bar 구현하기
- Scaffold의 bottomNavigationBar는 위치와 형태가 고정되어있어 사용하지 않음
- 결국 네비게이션 바 영역 안에 4가지 요소가 수평으로 배치된 것임
- 이 영역에서 다른 것이 선택되었을 때 화면 구성이 변화해야만함 -> stf
- 같은 형식, 다른 데이터인 경우 -> map을 통해 따로 만들어진 틀에 데이터 삽입하여 제작 후 list화

## Todo
### floatingActionButton
### bottomSheet
> floating Action Button으로부터 호출됨
