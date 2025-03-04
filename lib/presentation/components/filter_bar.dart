import 'package:flutter/material.dart';

enum FilterOption {
  all("All"),
  today("Today"),
  upcoming("Upcoming");

  const FilterOption(this.title);

  final String title;
}

class TodoistFilterBar extends StatefulWidget {
  const TodoistFilterBar({super.key});

  @override
  State<TodoistFilterBar> createState() => _TodoistFilterBarState();
}

class _TodoistFilterBarState extends State<TodoistFilterBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      FilterOption.values.map((FilterOption option) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: FilterSelection(title: option.title),
        );
      }).toList(),
    );
  }
}

class FilterSelection extends StatelessWidget {
  const FilterSelection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: Container(
        height: 25,
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Theme.of(context).colorScheme.primary,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
