import 'package:flutter/material.dart';
import 'package:new_york_time_app/Screens/HomeScreen/home_screen.dart';
import 'package:new_york_time_app/Screens/HomeScreen/widgets/TabBar/tab_item.dart';

// ignore: must_be_immutable
class SegmentedTab extends StatelessWidget {
  SegmentedTab({
    super.key,
    required this.selected,
    required this.onSelectionChange,
  });

  final Period selected;
  Function(Period) onSelectionChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabItem(
            label: '1',
            selected: selected == Period.day1,
            onTap: () {
              onSelectionChange(Period.day1);
            },
          ),
          TabItem(
            label: '7',
            selected: selected == Period.day7,
            onTap: () {
              onSelectionChange(Period.day7);
            },
          ),
          TabItem(
            label: '30',
            selected: selected == Period.day30,
            onTap: () {
              onSelectionChange(Period.day30);
            },
          ),
        ],
      ),
    );
  }
}


