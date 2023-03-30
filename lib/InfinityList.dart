import 'package:flutter/material.dart';

class InfinityList extends StatefulWidget {
  const InfinityList({Key? key}) : super(key: key);

  @override
  State<InfinityList> createState() => _InfinityListState();
}

class _InfinityListState extends State<InfinityList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Text('строка $index');
      },
    );
  }
}
