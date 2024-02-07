import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'heading': 'Welcome to Flutter',
          'dec': 'Please learn getx',
        },
        'lao': {
          'heading': 'ສະບາຍດີ Flutter',
          'dec': 'ກະລຸນາຮຽນ getx',
        }
      };
}
