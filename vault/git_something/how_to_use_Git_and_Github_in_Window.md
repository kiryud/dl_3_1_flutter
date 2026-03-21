### 공용 디바이스를 사용할 때 https를 통해 github를 아무런 준비조치 없이 사용했을 때 일어나는 "인증 문제"

```
git config --global credential.useHttpPath true
```

#### 문제 발생의 원인
- HTTPS를 통한 github 사용시 Window/Mac을 가리지 않고 credential은 기본적으로 하나의 계정만을 관리한다

#### 해결 방안
- credentioal을 repository별로 분리하기
```shell
git config --global credential.useHttpPath true
```

- 아예 github에 유저 계정 기반으로 접근하도록 주소 작성하기
```shell
https://username@github.com/username/repo.git
```