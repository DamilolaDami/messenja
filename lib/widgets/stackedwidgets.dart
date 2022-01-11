import 'package:flutter/material.dart';

class StackedWidgets extends StatelessWidget {
  final List items;
  final double size;
  const StackedWidgets({Key? key, required this.items, this.size = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allItems = items.map((item) {
      final value = Container(
        width: size,
        height: size,
        child: item,
      );
      return value;
    }).toList();

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: allItems,
      ),
    );
  }
}
