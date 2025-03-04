import 'package:flutter/material.dart';

import '../../utils/date.dart';

class TodayIcon extends StatelessWidget {
  const TodayIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      color: Theme.of(context).colorScheme.onSurface,
      // constraints: BoxConstraints.expand(),
      child: Center(
        child: Text(
          currentDay.toString(),
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
      ),
    );
  }
}
