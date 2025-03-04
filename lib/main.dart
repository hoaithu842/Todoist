import 'package:flutter/material.dart';
import 'package:todoist_clone/presentation/components/filter_bar.dart';
import 'package:todoist_clone/presentation/components/search_bar.dart';
import 'package:todoist_clone/presentation/components/today_icon.dart';
import 'package:todoist_clone/presentation/components/todo_bottomsheet.dart';
import 'package:todoist_clone/presentation/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: const MyHomePage(title: 'Todoist'),
      debugShowCheckedModeBanner: false,
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
  int _counter = 0;
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: AppBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                title: Text(widget.title),
                actions: [TodayIcon()],
              ),
            ),
            SliverAppBar(
              clipBehavior: Clip.none,
              scrolledUnderElevation: 0.0,
              titleSpacing: 0.0,
              backgroundColor: Theme.of(context).colorScheme.surface,
              floating: true,
              pinned: true,
              title: TodoistSearchBar(),
            ),
            SliverAppBar(
              clipBehavior: Clip.none,
              scrolledUnderElevation: 0.0,
              titleSpacing: 0.0,
              backgroundColor: Theme.of(context).colorScheme.surface,
              pinned: true,
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: TodoistFilterBar(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final item = items[index];
                return Dismissible(
                  key: Key(item),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('$item dismissed')));
                  },
                  background: Container(color: Colors.red),
                  child: ListTile(title: Text(item)),
                );
              }, childCount: items.length),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return TodoBottomsheet();
            },
          );
        },
        tooltip: 'Create Todo',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
