


```dart
void main() {
  runApp(const MyApp());
}
```

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
      home: const TodoPage(),
    );
  }
}
```