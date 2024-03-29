import 'package:flutter/material.dart';

class DismissibleApp extends StatefulWidget {
  @override
  _DismissibleAppState createState() => new _DismissibleAppState();
}

class _DismissibleAppState extends State<DismissibleApp> {
  final List<String> _values = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Woolha.com Flutter Tutorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
            itemCount: _values.length,
            padding: const EdgeInsets.all(5.0),
            separatorBuilder: (context, index) => const Divider(
                  color: Colors.black,
                ),
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key('item ${_values[index]}'),
                background: Container(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: const <Widget>[
                        Icon(Icons.favorite, color: Colors.white),
                        Text('Move to favorites',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                secondaryBackground: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const <Widget>[
                        Icon(Icons.delete, color: Colors.white),
                        Text('Move to trash',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                confirmDismiss: (DismissDirection direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Delete Confirmation"),
                        content: const Text(
                            "Are you sure you want to delete this item?"),
                        actions: <Widget>[
                          ElevatedButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text("Delete")),
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("Cancel"),
                          ),
                        ],
                      );
                    },
                  );
                },
                onDismissed: (DismissDirection direction) {
                  if (direction == DismissDirection.startToEnd) {
                    print("Add to favorite");
                  } else {
                    print('Remove item');
                  }

                  setState(() {
                    _values.removeAt(index);
                  });
                },
                child: ListTile(
                  leading: const Icon(Icons.local_activity, size: 50),
                  title: Text(_values[index]),
                  subtitle: const Text('Description here'),
                ),
              );
            }),
      ),
    );
  }
}
