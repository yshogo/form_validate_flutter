import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Home validate demo page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Container(
            margin: EdgeInsets.all(10.0), child: Form(child: _formUI())));
  }

  Widget _formUI() {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(labelText: "Email"),
          keyboardType: TextInputType.text,
          validator: (String email) {
            return "";
          },
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          onPressed: _validationInput,
          child: Text("登録"),
        )
      ],
    );
  }

  void _validationInput() {}
}
