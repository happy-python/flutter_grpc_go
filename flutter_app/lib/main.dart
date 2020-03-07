import 'package:flutter/material.dart';
import 'package:flutter_app/services/hello_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Grpc ❤️ Flutter'),
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
  String res = "";

  Future<void> _sayHello() async {
    var service = await HelloService.sayHello();
    setState(() {
      res = service.response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                _sayHello();
              },
              child: Text(
                "Let's say hi!",
                style: TextStyle(color: Colors.white),
              ),
            ),
            res.isEmpty ? Container() : Text("Server says: $res"),
          ],
        ),
      ),
    );
  }
}
