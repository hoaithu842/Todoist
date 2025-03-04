import 'package:flutter/material.dart';

class TodoBottomsheet extends StatefulWidget {
  const TodoBottomsheet({super.key});

  @override
  State<TodoBottomsheet> createState() => _TodoBottomsheetState();
}

class _TodoBottomsheetState extends State<TodoBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200,
      child: Container(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Title
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Title',
                    prefixIcon: Icon(Icons.turned_in),
                  ),
                ),
              ),

              // Description
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                child: TextFormField(
                  minLines: 1,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Description',
                    // prefixIcon: Icon(Icons.edit_note),
                    icon: Icon(Icons.edit_note),
                  ),
                ),
              ),

              // const Text('Modal BottomSheet'),
              ElevatedButton(
                child: const Text('Create'),
                onPressed: () {
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
