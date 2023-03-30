import 'dart:math';

import 'package:flutter/material.dart';

class InfinityMathList extends StatefulWidget {
  const InfinityMathList({Key? key}) : super(key: key);

  @override
  State<InfinityMathList> createState() => _InfinityMathListState();
}

class _InfinityMathListState extends State<InfinityMathList> {
  final List<String> _array = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      const Divider();
      final num index = pow(2.0, i);
      _array.add(index.toStringAsFixed(0));

      return ListTile(title: Text('2^$i = ${_array[i]}'));
    });
  }
}
