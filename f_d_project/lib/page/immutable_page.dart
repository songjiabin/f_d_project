import 'package:flutter/material.dart';

/// 作者: 宋佳宾
/// 日期: 2022/1/24
/// 备注: immutable 作用

@immutable // 不可变的
class ImmutablePage {
  const ImmutablePage(this.name, this.age);

  // 需要用final进行修饰
  final String name;

  final int age;
}
