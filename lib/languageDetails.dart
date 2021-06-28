import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.lightBlueAccent,
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c'),
                radius: 100.0),
            SizedBox(
              height: 20,
            ),
            DefaultTextStyle(
              style: TextStyle(decoration: TextDecoration.none),
              child: Text(
                "PYTHON",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    height: 1,
                    letterSpacing: 4,
                    color: Colors.black),
              ),
            )
          ],
        ),
        margin: EdgeInsets.only(left: 30, top: 100, right: 30, bottom: 50),
        height: double.infinity,
        width: double.infinity,
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
      ),
    );
  }
}
