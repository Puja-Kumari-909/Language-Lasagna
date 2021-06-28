import 'package:flutter/material.dart';
import 'languageDetails.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Details()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        height: 100,
        color: Colors.lightGreen,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c'),
                  radius: 30.0),
              Text("Java", style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
