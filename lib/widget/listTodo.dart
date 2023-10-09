import 'package:flutter/material.dart';

Container listTodo() {
  return Container(
    width: double.infinity,
    height: 74,
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 37, 251, 155),
      borderRadius: BorderRadius.circular(12),
    ),
    child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Uống nước hàng ngày',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.delete_outline,
          color: Colors.red,
          size: 20,
        ),
      ]),
    ),
  );
}
