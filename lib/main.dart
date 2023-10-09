import 'package:flutter/material.dart';

// Widget
import 'widget/listTodo.dart';
import 'widget/modalBottom.dart';

void main(List<String> args) {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'TodoList',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 215, 253),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            listTodo(),
            listTodo(),
            listTodo(),
            listTodo(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25.0))),
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return modalBottom(context);
              });
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
