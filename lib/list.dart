import 'package:flutter/material.dart';
import 'languageDetails.dart';
import 'languages.dart';

class Task extends StatefulWidget {
  final Languages languages;
  const Task(this.languages);

  @override
  _TaskState createState() => _TaskState(languages);
}

class _TaskState extends State<Task> {
  final Languages languages;

  _TaskState(this.languages);
  @override
  Widget build(BuildContext context) {
    return LanguageTile(languages);
  }
}

class LanguageTile extends StatelessWidget {
  final Languages languages;
  const LanguageTile(this.languages);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Details(languages)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                  backgroundImage: AssetImage('${languages.imagePath}'),
                  radius: 30.0),
              SizedBox(
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${languages.language}", style: TextStyle(fontSize: 30)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('${languages.year}', style: TextStyle(fontSize: 10)),
                ],
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
