import 'dart:io';

import 'package:f_d_project/page/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  // WidgetFlutterBinding用于与 Flutter 引擎交互
  // 由于插件需要使用平台 channel 来调用 native 代码，
  // 这是异步完成的，因此您必须调用ensureInitialized()确保你有一个 WidgetsBinding 的实例.
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    // 设置Android头部的导航栏透明
    const SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  runApp(MultiProvider(providers: <ChangeNotifierProvider<dynamic>>[

  ]));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootPage(),
    );
  }
}
