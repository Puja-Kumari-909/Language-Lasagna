import 'package:flutter/material.dart';
import 'package:language_list/languages.dart';

class DetailsP extends StatelessWidget {
  final Languages languages;
  const DetailsP(this.languages);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: null,
      // onVerticalDragEnd: (DragEndDetails) {
      //   Navigator.pop(context);
      // },
      onPanUpdate: (details) {
        if (details.delta.dy > 0)
          Navigator.pop(context);
        else if (details.delta.dy < 0)
          Navigator.pop(context);
        else
          print('do nothing');
      },
      // onDoubleTap: () {
      //   Navigator.pop(context);
      // },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Container(
          child: Column(
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              Image(
                height: 220,
                width: double.infinity,
                fit: BoxFit.fill,
                image: AssetImage(
                  '${languages.imagePath}',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTextStyle(
                style: TextStyle(decoration: TextDecoration.none),
                child: Container(
                  padding: EdgeInsets.all(5),
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
                  child: Text(
                    "${languages.language}",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        height: 1,
                        letterSpacing: 4,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              DefaultTextStyle(
                style: TextStyle(decoration: TextDecoration.none),
                child: Container(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Text(
                      "Est ${languages.year}",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                          height: 1,
                          letterSpacing: 4,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: DefaultTextStyle(
                  style: TextStyle(decoration: TextDecoration.none),
                  child: Text(
                    '${languages.text}',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 11,
                        height: 2,
                        letterSpacing: 2,
                        color: Colors.black),
                  ),
                ),
              ),
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
      ),
    );
  }
}
