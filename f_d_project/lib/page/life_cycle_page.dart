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
    // 在调用initState()之后。
    // 在调用didUpdateWidget()之后。
    // 在调用setState()之后。
    // 在调用didChangeDependencies()之后。
    // 在State对象从树中一个位置移除后（会调用deactivate）又重新插入到树的其它位置之后。
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
    // 在 widget 重新构建时，Flutter 框架会调用
    // widget.canUpdate来检测 widget 树中同一位置的新旧节点，然后决定是否需要更新，
    // 如果widget.canUpdate返回true则会调用此回调。
    // 正如之前所述，widget.canUpdate会在新旧 widget 的 key 和 runtimeType 同时相等时会返回true，
    // 也就是说在在新旧 widget 的key和runtimeType同时相等时didUpdateWidget()就会被调用。
    // 如果返回true，不会重新创建widget，只会更新节点信息
    LogUtils.v('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    // 当 State 对象从树中被移除时，会调用此回调。
    // 在一些场景下，Flutter 框架会将 State 对象重新插到树中，
    // 如包含此 State 对象的子树在树的一个位置移动到另一个位置时（可以通过GlobalKey 来实现）。
    // 如果移除后没有重新插入到树中则紧接着会调用dispose()方法。
    LogUtils.v('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    // 当 State 对象从树中被永久移除时调用；通常在此回调中释放资源。
    LogUtils.v('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    // 只有热重载的时候会调用 release模式不会调用
    LogUtils.v('reassemble');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    LogUtils.v('didChangeDependencies');
  }
}
