import 'package:flutter/material.dart';
import 'list.dart';
import 'languages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Not My Idea'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()), // new
          controller: _controller,
          children: <Widget>[
            Task(languageData[0]),
            Task(languageData[1]),
            // Task(),
            // Task(),
            // Task(),
            // Task(),
            // Task(),
            // Task(),
            // Task(),
            // Task(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.access_alarms),
      ),
    );
  }
}
