import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

enum LogType { info, error, warning }

class LogUtil {
  const LogUtil._();

  static void printLog(String message, {LogType type = LogType.info}) {
    final logger = Logger(
      printer: PrettyPrinter(),
    );

    if (kDebugMode) {
      if (type == LogType.warning) {
        logger.w('Warning: $message');
      } else if (type == LogType.error) {
        logger.e('Error: $message');
      } else {
        logger.i('Info: $message');
      }
    }
  }
}
