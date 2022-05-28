import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'l10n/support_locale.dart';
import 'locale_provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key,}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState? getState(BuildContext buildContext,) {
    final _MyAppState? myAppState = buildContext.findAncestorStateOfType<_MyAppState>();
    return myAppState;
  }
}

class _MyAppState extends State<MyApp> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, child,) {
        Locale _local = provider.getLocale() ?? L10N.supportedLocales.first;
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          locale: _local,
          localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales:  L10N.supportedLocales,
          home: const SafeArea(
            child: MyHomePage(),
          ),
        );
      }
    );
  }
}