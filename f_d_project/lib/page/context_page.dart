import 'package:flutter/material.dart';

class ContextPage extends StatefulWidget {
  const ContextPage({Key? key}) : super(key: key);

  @override
  _ContextPageState createState() => _ContextPageState();
}

class _ContextPageState extends State<ContextPage> {
  @override
  Widget build(BuildContext context) {
    final Scaffold? scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
    if (scaffold != null) {
      return (scaffold.appBar as AppBar).title ?? const Text('appbar');
    }
    return const Text('appBar');
  }
}
