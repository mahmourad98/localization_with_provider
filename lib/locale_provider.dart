import 'package:flutter/material.dart';
import 'l10n/support_locale.dart';

class LocaleProvider with ChangeNotifier {
  Locale? _locale;

  Locale? getLocale() {return _locale;}

  void setLocale(Locale loc,) {
    if (!L10N.supportedLocales.contains(loc,)) return;
    _locale = loc;
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}