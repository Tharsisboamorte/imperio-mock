import 'package:imperio_mock/core/utils/regex_contanst.dart';

extension Validation on String {
  bool get isEmail => contains(RegExp(RegexConstants.emailRegex as String));
}
