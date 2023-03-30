import 'package:flutter/material.dart';

class SimpleList extends StatefulWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  State<SimpleList> createState() => _SimpleListState();
}

class _SimpleListState extends State<SimpleList> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: const <Widget>[
      Text('0000'),
      Divider(),
      Text('0001'),
      Divider(),
      Text('0010'),
      Divider(),
    ],);
  }
}
