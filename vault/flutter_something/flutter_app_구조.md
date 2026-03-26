

### 시작점
```dart
void main() {
  runApp(const MyApp());
}
```

### 기본 틀 - scaffold 이해해보기
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(
          brightness: .light,
          seedColor: Colors.blue,
        ),
      ),
      home: const DefaultPage(),
    );
  }
}
```


```ascii art
┌─────────────────────────┐
│       Status Bar        │
├─────────────────────────┤
│        AppBar           │
├─────────────────────────┤
│                         │
│         Body            │
│                         │
│                 (FAB)   │
├─────────────────────────┤
│   BottomNavigationBar   │
└─────────────────────────┘
```

```dart
class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
//      body: SafeArea(), // AppBar 없을때
      body: DefaultContents(
      ),
      bottomNavigationBar: BottomAppBar(
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
```

#### Scaffold 구성 요소

1. appBar
  - 상단 바
2. body
  - 메인이 될 화면
3. bottomNavigationBar
  - 하단 고정 바
4. floatingActionButton
  - body 위에 떠다닐 버튼
  - 위치 조정 -> floatingActionButtonLocation
5. drawer / endDrawer
  - 사이드 패널
  - 스와이프 혹은 버튼으로 열 수 있음
6. bottomSheet
  - body 위로 올라오는 패널

#### 주의점
- 각 page마다 하나씩 가지는 페이지 단위 독립 scaffold는 일반적이나 중첩은 피하는것이 좋다
- 페이지 정의가 하나의 고정적인 큰 페이지로서 appBar나 bottom은 고정적이고 그 속의 body가 변화하는 그러한 필요한 경우는 사용 가능하다. 단 이 때 body를 제외한 나머지 요소 모두 상위 scaffold에서 관리하는것이 좋다고 한다.

### flutter layout widgets
#### 종류
1. 축 기반 레이아웃
  - Row
  - Column
  - Flex
  - Wrap
  - Stack
  - Flow 
2. 박스, 컨테이너 기반
  - Container
  - SizeBox
  - ConstraineBox
  - Padding
  - Align
  - Center
  - DecoratedBox
  - FittedBox
  - FractionallySizeBox
3. 스크롤 / 확장
  - singleChildScrollView
  - ListView
  - GridView
  - Expanded / Flexible

#### 주의점
- Row/Column, Stack 안에는 여러 위젯 가능 (children)
- Expanded / Flexible은 Row/Column 안에서만 사용 가능
- Align / Padding / Center / SizeBox / Container는 어디서든 사용 가능
- 중첩 제한은 없으나 가독성 있게 잘 관리하도록 하자

```dart
ElevatedButton(
    onPressed: (){},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurpleAccent,
      textStyle: TextStyle(
        color: Colors.white,
      )
    ),
    child: Text('전체'),
  ),
```

스크롤 실습
```dart
class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: .horizontal,
      child: Row(
        spacing: 10,
        children: [
          _buildFilter(isSelected: true, text: '전체'),
          _buildFilter(text: '업무'),
          _buildFilter(text: '개인'),
          _buildFilter(text: '건강'),
          _buildFilter(text: '운동'),
          _buildFilter(text: '빨래'),
          _buildFilter(text: '설거지'),
          _buildFilter(text: '청소'),
          _buildFilter(text: '생필품'),
        //  _buildFilter(),
        ],
      ),
    );
  }
}
```

