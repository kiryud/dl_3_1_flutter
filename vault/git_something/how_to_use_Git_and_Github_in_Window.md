# 알려진 문제 해결해보기

## 공용 디바이스를 사용할 때 https를 통해 github를 아무런 준비조치 없이 사용했을 때 일어나는 "인증 문제"

### 문제 발생의 원인
- HTTPS를 통한 github 사용시 Window/Mac을 가리지 않고 credential은 기본적으로 하나의 계정만을 관리한다

### 해결 방안
- credential을 repository별로 분리하기

```shell
git config --global credential.useHttpPath true
```

- working directory에서 github repository 접근 URL 수정

```shell
git remote set-url origin https://USERNAME@github.com/USER/REPO.git   
```

- 설정 없이 작업하는 상황이라면 아예 github에 유저 계정 기반으로 접근하도록 주소 작성할 것
```shell
https://username@github.com/username/repo.git
```

# 잘 모르면 여기부턴 절대 하지 마시오
## 진짜 문제 -> ssh 설정을 왜 안했니
### 애들이 Secure Shell Protocol을 모름
| 궁금하면 "ssh 대칭 키" 검색을 하도록 하자
### 진짜 해결법 - 계정별로 다른 ssh key를 만들고 등록하기
1. 이메일 정보가 포함된 키 생성
- mac or linux : shell
```shell
ssh-keygen -t ed25519 -C "user@email.com" -f "~/.ssh/본인학번"
```
- window : powershell
```powershell
ssh-keygen -t ed25519 -C "user@email.com" -f "C:\Users\user\.ssh\본인학번"
```
(만약 바로 안된다면 .ssh 폴더가 존재하는지 확인해보고 없다면 "mkdir .ssh"를 써보자)

- 생성이 안되면 에러가 나지만 (에러 로그 잘 나옴) 잘 생성된다면 비밀번호를 입력하면 된다.
```shell
Enter passphrase (empty for no passphrase): [비밀번호 입력]
Enter same passphrase again: [비밀번호 확인]
```
- ssh-keygen : Secure Shell Protocol을 사용할 때 사용할 key를 만들어주는 명령어(프로그램)
- option 't' : key type 지정하기
    - ed25519라는 type을 사용하도록 추가
- option 'C'
    - key 자체에 영향을 주는 것이 아님
    - 사용자가 식별 가능한 표식
    - github에서 쓰는 계정으로 적어서 누가봐도 그 계정이라는걸 알리는 용도 (다른 사람도 key 만들어야하니까)
    - 근데 공개키 마지막에 붙을 정보니까 파일명이라고 착각 ㄴㄴ함
- option 'f'
    - 이걸 써야 니가 방금 생성한건지 식별 가능함
    - 본인 학번 앞에건 표준 경로니까 따로 키 관리할거 아니면 수정 ㄴㄴ함
    - 아마 파일명이 "본인학번" 이걸로 될거임
    - 학번 대신 원하는 이름 가능은 하다만 제발 한국어 쓰지 말아다오

```powershell
Enter file in which to save the key (C:\Users\user\.ssh\ID_ed25519):
```
- 이거 뜨면 얌전히 y 하면 됨

내 예시
- window
```powershell
ssh-keygen -t ed25519 -C "jijeong@student.42seoul.kr" -f "C:\Users\user\.ssh\202130327"
```
- mac, linux
```shell
ssh-keygen -t ed25519 -C "jijeong@student.42seoul.kr" -f "~/.ssh/202130327"
```


2. Github에서 공개키 등록하기
    1. Setting - SSH and GPG keys - new SSH key
    2. 이름은 "본인이 식별 및 관리 가능한 이름"으로 설정
        - 수강하는 수업 이름도 좋음
    3. 공개키 찾아오기
        - 보통 컴퓨터 사용자명은 "user"로 되어있을거임
    4. 키 적을 부분에 붙여넣기
```powershell
cd C:\Users\<사용자명>\.ssh\
cat 본인학번.pub
# 내용물 복사해가면 됨
# 위에서 'C'옵션 썼으면 마지막에 이메일 주소 보일겨
```

3. Secure Shell Protocol Config File 수정하기
- 예시를 토대로 본인의 정보를 등록하면 된다
- 첫번째건 틀, 두번째건 내가 쓴 예시다

    1. PowerShell을 관리자모드로 연다
    2. .ssh 폴더로 이동한다 ("cd .ssh")
    3. VSC를 연다 ("code .")
    4. 확장자 없는 config 파일을 만들고 내용을 적는다
예시
```config
Host github-account
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_account1
```
내 경우
```config
Host github-kiryud
    HostName github.com
    User git
    IdentityFile ~/.ssh/202130327
```

- 참고로 config 파일이 .ssh에 존재하지 않을 때 git/ssh는 id_ + ssh-key-type 을 먼처 찾아본다. 이는 ssh-keygen을 했을 때 표준 키 타입에 따라 기본적으로 생성되는 키의 명칭이다.
- 개인 컴퓨터인 경우 키 이름을 기본 설정대로, 컨피그 파일도 작성하지 않더라도 github에 공개키를 잘 등록하기만 하면 알아서 잘 작동한다는 뜻이다.


4. git remote를 통한 접근 URL 수정
예시 - default
```shell
git remote set-url origin git@github-account:username/repo.git
```

예시 - 내 경우
```shell
git remote set-url origin git@github-kiryud:kiryud/dl_3_1_flutter.git
```

## Git Credential 기존 정보 삭제

### window가 관리중인 Credential 제거
- 검색 "자격증명 관리자" - Windows 자격 증명
git:url -> 자기거 삭제 (중간에 자기 아이디 보인다)

### Git Credential Manager 기존 정보 삭제

```powershell
git credential-manager get
protocol=https
host=github.com
# 깃 프로그램이 켜지며 로그인(브라우저를 통한 로그인도 가능) 창이 열림

git credential-manager erase
protocol=https
host=github.com
username="본인 계정"
```

