## 记录学习flutter过程笔记
### @immutable 不可变的
代表 Widget 是不可变的，这会限制 Widget 中定义的属性（即配置信息）必须是不可变的（final），为什么不允许 Widget 中定义的属性变化呢？这是因为，Flutter 中如果属性发生则会重新构建Widget树，即重新创建新的 Widget 实例来替换旧的 Widget 实例，所以允许 Widget 的属性变化是没有意义的，因为一旦 Widget 自己的属性变了自己就会被替换。这也是为什么 Widget 中定义的属性必须是 final 的原因。
```
@immutable // 不可变的
class ImmutablePage {
  const ImmutablePage(this.name, this.age);

  // 需要用final进行修饰
  final String name;

  final int age;
}
```