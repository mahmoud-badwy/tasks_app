import 'package:flutter/material.dart';
import 'package:tasks_app/layout/taskapp/archive.dart';
import 'package:tasks_app/layout/taskapp/donetasks.dart';
import 'package:tasks_app/layout/taskapp/tasks.dart';

class TaskApp extends StatefulWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  // ignore: non_constant_identifier_names
  Ontap(val) {
    setState(() {
      currentIndex = val;
    });
  }

  int currentIndex = 0;
  List titles = const [
    "Tasks",
    "Done Tasks",
    "Archive",
  ];
  List classes = const [
    Tasks(),
    DoneTasks(),
    Arcive(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[1]),
      ),
      body: classes[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Tasks',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Done Tasks',
            icon: Icon(Icons.check_circle_outline_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Archive',
            icon: Icon(Icons.archive),
          ),
        ],
        currentIndex: currentIndex,
        onTap: Ontap,
      ),
    );
  }
}
