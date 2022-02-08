import 'package:f_d_project/utils/log_utils.dart';
import 'package:flutter/material.dart';

/// 作者: 宋佳宾
/// 日期: 2022/2/8
/// 备注: 生命周期page

class LifeCyclePage extends StatefulWidget {
  const LifeCyclePage({Key? key, this.initValue = 0}) : super(key: key);

  final int initValue;

  @override
  _LifeCyclePageState createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage> {
  late int _count;

  @override
  void initState() {
    super.initState();
    // 插入到widget的时候，首先该方法会被调用
    _count = widget.initValue;
    LogUtils.v('initState');
  }

  @override
  Widget build(BuildContext context) {
    LogUtils.v('build');
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: _onPress, child: Text('$_count')),
      ),
    );
  }

  void _onPress() {
    setState(() {
      _count++;
    });
  }

  @override
  void didUpdateWidget(covariant LifeCyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    LogUtils.v('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    LogUtils.v('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    LogUtils.v('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    LogUtils.v('reassemble');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    LogUtils.v('didChangeDependencies');
  }
}
