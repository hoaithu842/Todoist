import 'package:flutter/material.dart';

class TodoistSearchBar extends StatefulWidget {
  const TodoistSearchBar({super.key});

  @override
  State<TodoistSearchBar> createState() => _TodoistSearchBarState();
}

class _TodoistSearchBarState extends State<TodoistSearchBar> {
  String query = '';

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: 40,
          color: Color.fromARGB(100, 103, 103, 103),
          child: TextField(
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onChanged: onQueryChanged,
            decoration: InputDecoration(
              // labelText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
