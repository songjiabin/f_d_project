import 'package:logger/logger.dart';

/// 作者: 宋佳宾
/// 日期: 2022/2/8
/// 备注: 这是备注
class LogUtils {
  static void v(String content) {
    final Logger _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 0,
      ),
    );
    _logger.v(content);
  }
}
