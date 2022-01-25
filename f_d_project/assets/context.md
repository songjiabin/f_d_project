### context
**build方法有一个context参数，它是BuildContext类的一个实例，表示当前 widget 在 widget 树中的上下文，每一个 widget 都会对应一个 context 对象（因为每一个 widget 都是 widget 树上的一个节点）。实际上，context是当前 widget 在 widget 树中位置中执行”相关操作“的一个句柄(handle)，比如它提供了从当前 widget 开始向上遍历 widget 树以及按照 widget 类型查找父级 widget 的方法。**
```dart
  @override
  Widget build(BuildContext context) {
    final Scaffold? scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
    if (scaffold != null) {
      return (scaffold.appBar as AppBar).title ?? const Text('appbar');
    }
    return const Text('appBar');
  }
```