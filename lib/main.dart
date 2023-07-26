import 'package:flutter/material.dart';

void main() {
  runApp(MeninTirkemem());
}

class MeninTirkemem extends StatefulWidget {
  const MeninTirkemem({super.key});

  @override
  State<StatefulWidget> createState() => _MeninTirkememState();
}

class _MeninTirkememState extends State<MeninTirkemem> {
  int san = 7;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter 01',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('flutter Demo Home Page'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'you haye pushed the button this many times:',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
              ),
              Text(
                '$san',
                style:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
            san = san + 1;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
