import 'package:f_d_project/page/context_page.dart';
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
        title: const Text('appBar111111'),
      ),
      body: ListView(
        children: <Widget>[
          ContextPage(),
        ],
      ),
    );
  }


}
