import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 14',
      home: SwipeableList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SwipeableList extends StatefulWidget {
  SwipeableList({super.key});

  @override
  State<SwipeableList> createState() => _SwipeableListState();
}

class _SwipeableListState extends State<SwipeableList> {
  final List<Map<String, dynamic>> _items = List.generate(
    10,
    (i) => {
      'title': 'Item ${i + 1}',
      'color': i % 2 == 0
          ? Colors.deepPurpleAccent.shade100
          : Colors.deepPurpleAccent.shade200, 
    },
  );

  void _editItem(int index) {
    final controller = TextEditingController(text: _items[index]['title']);
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Edit Item'),
        content: TextField(
          controller: controller,
          autofocus: true,
          onSubmitted: (value) {
            if (value.trim().isNotEmpty) {
              setState(() => _items[index]['title'] = value);
              Navigator.pop(context);
            }
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }

  void _handleDismiss(DismissDirection dir, int index) {
    if (dir == DismissDirection.startToEnd) {
      setState(() => _items.removeAt(index));
    } else if (dir == DismissDirection.endToStart) {
      _editItem(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Problem 14'), centerTitle: true),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, i) => Dismissible(
          key: Key(_items[i]['title']),
          onDismissed: (dir) => _handleDismiss(dir, i),
          background:
              _swipeBackground(Icons.delete, Colors.red, Alignment.centerLeft),
          secondaryBackground:
              _swipeBackground(Icons.edit, Colors.blue, Alignment.centerRight),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12), 
            child: Container(
              color: _items[i]['color'], 
              child: ListTile(
                title: Text(
                  _items[i]['title'], 
                  style: TextStyle(
                    color: Colors.black, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _swipeBackground(IconData icon, Color color, Alignment align) {
    return Container(
      color: color,
      alignment: align,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Icon(icon, color: Colors.white),
    );
  }
}
