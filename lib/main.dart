import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebarx/sidebarx.dart';

import 'package:untitled/providers/CounterModel.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CounterModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterWidget(),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
    return Scaffold(
        body: Center(

            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'value : ${counter.count}',
          style: TextStyle(fontSize: 30),
        ),
        ElevatedButton(onPressed: () => {
          counter.add()
        }, child: Text('click')),
      ],
    )));
  }
}
