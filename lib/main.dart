import 'package:flutter/material.dart';

// Widget
import 'widget/listTodo.dart';
import 'widget/modalBottom.dart';

// Items
import 'package:todo_app_flutter/modal/items.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  final List<DataItems> items = [
    DataItems(id: '1', name: 'Dậy làm việc'),
    DataItems(id: '2', name: 'Uống nước hàng ngày'),
    DataItems(id: '3', name: 'Đi ngủ đúng giờ'),
    DataItems(id: '4', name: 'Đi tập thể dục'),
    DataItems(id: '5', name: 'Đi chơi với bạn bè'),
  ];

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
          children: items.map((item) => listTodo(items: item)).toList(),
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
