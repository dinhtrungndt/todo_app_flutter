import 'package:flutter/material.dart';

class modalBottom extends StatelessWidget {
  modalBottom({
    Key? key,
    required this.addTask,
  }) : super(key: key);

  // Cách 1: String text = '';

  //Cách 2:
  final Function addTask;
  final TextEditingController _controller = TextEditingController();

  void _handleOnClick(BuildContext context) {
    final name = _controller.text;
    if (name.isEmpty) {
      return;
    }
    addTask(name);
    // print(text);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              // Cách 1:
              // onChanged: (value) {
              //   text = value;
              // },
              // Cách 2:
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your task',
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _handleOnClick(context),
                child: const Text('Add list'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
