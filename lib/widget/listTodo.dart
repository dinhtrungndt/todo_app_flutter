import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

class listTodo extends StatelessWidget {
  listTodo({
    Key? key,
    required this.items,
    required this.handleDelete,
    required this.index,
  }) : super(key: key);

  var items;
  var index;
  final Function handleDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: (index%2==0) ? const Color.fromARGB(255, 37, 251, 155) : const Color.fromARGB(
            255, 114, 139, 246),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            items.name,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: () async {
              if(await confirm(context)){
                handleDelete(items.id);
              }
              return ;
            },
            child: const Icon(
              Icons.delete_outline,
              color: Colors.red,
              size: 20,
            ),
          ),
        ]),
      ),
    );
  }
}
