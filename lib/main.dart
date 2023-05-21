import 'package:fic_tugas_x_storage/counter_shared_preferences.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _getDataCounter() async {
    _counter = await CounterSharedPreferences().getData();
    setState(() {});
  }

  void _incrementCounter() async {
    await CounterSharedPreferences().saveData(++_counter);
    _getDataCounter();
  }

  void _decrementCounter() async {
    await CounterSharedPreferences().saveData(--_counter);
    _getDataCounter();
  }

  void _removeCounter() async {
    await CounterSharedPreferences().removeData();
    _getDataCounter();
  }

  @override
  void initState() {
    super.initState();
    _getDataCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Local Stroge'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$_counter',
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: _decrementCounter, child: const Text('-')),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                    onPressed: _incrementCounter, child: const Text('+')),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                _removeCounter();
              },
              child: const Text('Clear'),
            ),
          ],
        ),
      ),
    );
  }
}
