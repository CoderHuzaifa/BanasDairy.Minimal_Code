import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'HELLO'},
        'hi_IN': {'hello': 'HELLO'},
        'gu_IN': {'hello': 'નમસ્તે'}
      };
}
