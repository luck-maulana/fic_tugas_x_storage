import 'package:fic_tugas_x_storage/counter_shared_preferences.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  int _counter2 = 0;

  void _getDataCounter() async {
    _counter = await CounterSharedPreferences().getData();
    setState(() {});
  }

  void _addOneCounter() async {
    await CounterSharedPreferences().saveData(++_counter);
    _getDataCounter();
  }

  void _addTwoCounter() async {
    await CounterSharedPreferences().saveData(_counter += 2);
    _getDataCounter();
  }

  void _addThreeCounter() async {
    await CounterSharedPreferences().saveData(_counter += 3);
    _getDataCounter();
  }

  void _decrementCounter() async {
    await CounterSharedPreferences().saveData(--_counter);
    _getDataCounter();
  }

  void _getDataCounter2() async {
    _counter2 = await CounterSharedPreferences().getData();
    setState(() {});
  }

  void _addOneCounter2() async {
    await CounterSharedPreferences().saveData(++_counter2);
    _getDataCounter2();
  }

  void _addTwoCounter2() async {
    await CounterSharedPreferences().saveData(_counter2 += 2);
    _getDataCounter2();
  }

  void _addThreeCounter2() async {
    await CounterSharedPreferences().saveData(_counter2 += 3);
    _getDataCounter2();
  }

  void _decrementCounter2() async {
    await CounterSharedPreferences().saveData(--_counter2);
    _getDataCounter2();
  }

  void _removeCounter() async {
    await CounterSharedPreferences().removeData();
    _getDataCounter();
    _getDataCounter2();
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
        title: const Text('BasketBall Point'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 310,
                height: 180,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 26, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Score :',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              '$_counter',
                              style: const TextStyle(
                                fontSize: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: _addOneCounter,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('+1'),
                          ),
                          ElevatedButton(
                            onPressed: _addTwoCounter,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('+2'),
                          ),
                          ElevatedButton(
                            onPressed: _addThreeCounter,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('+3'),
                          ),
                          ElevatedButton(
                            onPressed: _decrementCounter,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('-1'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 310,
                height: 180,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 26, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Score :',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              '$_counter2',
                              style: const TextStyle(
                                fontSize: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: _addOneCounter2,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('+1'),
                          ),
                          ElevatedButton(
                            onPressed: _addTwoCounter2,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('+2'),
                          ),
                          ElevatedButton(
                            onPressed: _addThreeCounter2,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('+3'),
                          ),
                          ElevatedButton(
                            onPressed: _decrementCounter2,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text('-1'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: ElevatedButton(
                  onPressed: _removeCounter,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Reset'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
