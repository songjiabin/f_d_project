import 'package:f_d_project/r.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  void initState() {
    super.initState();
    List<Widget> list = List.filled(10, Text('A'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appBar'),
      ),
      body: Container(
        child: FutureBuilder(
            future: rootBundle.loadString(R.assets1),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Markdown(data: snapshot.data);
              } else {
                return Center(
                  child: Text('loading...'),
                );
              }
            }),
      ),
    );
  }
}
