import 'package:flutter/material.dart';
import 'package:lab5/InfinityList.dart';
import 'package:lab5/InfinityMathList.dart';
import 'package:lab5/SimpleList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Список элементов'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Text('Simple list'),
            Text('Infinity list'),
            Text('Infinity Math list'),
          ]),
          title: Text(widget.title),
        ),
        body: const TabBarView(
          children: [
            SimpleList(),
            InfinityList(),
            InfinityMathList(),
          ],
        ),
      ),
    );
  }
}
