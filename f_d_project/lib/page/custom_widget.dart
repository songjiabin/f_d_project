import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// 作者: 宋佳宾
/// 日期: 2022/1/26
/// 备注: 这是备注

class CustomWidget extends SingleChildRenderObjectWidget {
  @override
  RenderObject createRenderObject(BuildContext context) {
    const Opacity(opacity: 1);
    return RenderOpacity(opacity: 1);
  }
// @override
// RenderOpacity createRenderObject(BuildContext context) {
//   return RenderOpacity(
//     opacity: opacity,
//     alwaysIncludeSemantics: alwaysIncludeSemantics,
//   );
// }
}
