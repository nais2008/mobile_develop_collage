import 'package:flutter/material.dart';
import 'package:todo_list/widgets/list_item.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List todo = [
    ["qwe", true],
    ["qwe", false],
  ];

  final _controller = TextEditingController();

  void checkBoxChanged(int index) {
    setState(() {
      todo[index][1] = !todo[index][1];
    });
  }

  void addNewTodo() {
    setState(() {
      todo.add([_controller.text, false]);
      _controller.clear();
    });
  }

  void deleteTodo(int index) {
    setState(() {
      todo.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Flutter demo home page",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (BuildContext bc, index) {
          return ListItem(
            name: todo[index][0],
            isEnabled: todo[index][1],
            onChanged: (value) => checkBoxChanged(index),
            onDelete: (context) => deleteTodo(index),
          );
        },
      ),
      floatingActionButton: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 40.0,
                right: 20.0,
                bottom: 0.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Add new todo...",
                    hintStyle: TextStyle(color: Colors.black45),
                    filled: true,
                    fillColor: Colors.deepPurple[200],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.deepPurple.shade200),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.deepPurpleAccent.shade400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: addNewTodo,
            backgroundColor: Colors.deepPurple[200],
            child: Icon(Icons.add, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
