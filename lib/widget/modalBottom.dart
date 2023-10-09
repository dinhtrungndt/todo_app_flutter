import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding modalBottom(BuildContext context) {
  return Padding(
    padding: MediaQuery.of(context).viewInsets,
    child: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Your task',
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Add list'),
            ),
          ),
        ],
      ),
    ),
  );
}
