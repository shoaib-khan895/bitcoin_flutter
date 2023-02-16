// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = <String>['Task 1'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list_rounded,
                    size: 60,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todo List',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '12 Task Left',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text('this is task 1'),
                        trailing: Checkbox(value: false, onChanged: (bool? value) {  },),
                      )
                    ],
                  )
                  ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          print('pressed');
        },
      ),
    );
  }
}

// ListView.builder(
//   padding: const EdgeInsets.all(20),
//   itemCount: tasks.length,
//   itemBuilder: (BuildContext context, int index) {
//     return Container(
//       height: 50,
//       color: Colors.amber[colorCodes[index]],
//       child: Center(
//         child: Text(' ${tasks[index]}'),
//       ),
//     );
//   },
// ),