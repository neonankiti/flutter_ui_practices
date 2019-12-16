import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 普通のアイコンの表示。Material Designのアイコンが提供されている。
            Icon(Icons.favorite, color: Colors.blueAccent, size: 48.0),
            // アイコンに対して、ボタンフィードバックなどを追加したい場合に利用する。
            IconButton(
              icon: Icon(Icons.access_alarm),
              onPressed: () {},
              // アイコンをタップした際のFeedbackがBlueになる。
              highlightColor: Colors.blue,
            ),
            // アイコンをdisableにするには、onPressedをnullにする。
            IconButton(
              icon: Icon(Icons.accessibility_new),
              onPressed: null,
              disabledColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
