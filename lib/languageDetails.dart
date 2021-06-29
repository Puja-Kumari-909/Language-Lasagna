import 'package:flutter/material.dart';
import 'Widgets/detailsWidgets.dart';
import 'languages.dart';

class Details extends StatefulWidget {
  final Languages languages;
  const Details(this.languages);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final Languages languages;

  @override
  Widget build(BuildContext context) {
    return DetailsP(languages);
  }
}
