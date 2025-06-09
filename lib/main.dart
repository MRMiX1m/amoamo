import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'عداد تسبيح',
      home: const CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مسبحتي'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_count', style: const TextStyle(fontSize: 60)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() => _count++),
              child: const Text('سبّح'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => setState(() => _count = 0),
              child: const Text('إعادة'),
            ),
          ],
        ),
      ),
    );
  }
}
