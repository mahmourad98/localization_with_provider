import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:untitled03/locale_provider.dart';

import 'l10n/support_locale.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var values = [];
  var searchValues = [];

  @override
  Widget build(BuildContext buildContext,) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(48,),
        child: AppBar(
          title: const Text('Flutter Demo Project 03',),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(buildContext).size.height * 0.10,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Text(AppLocalizations.of(context,).helloWorld),
              ),
            ),
          ),
          Divider(height:MediaQuery.of(buildContext).size.height * 0.05, thickness: 5.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: (){
                  Provider.of<LocaleProvider>(context, listen: false,).setLocale(L10N.supportedLocales[0],);
                },
                child: const Text('EN'),
              ),
              ElevatedButton(
                onPressed: (){
                  Provider.of<LocaleProvider>(context, listen: false,).setLocale(L10N.supportedLocales[1],);
                },
                child: const Text('AR'),
              ),
              ElevatedButton(
                onPressed: (){
                  Provider.of<LocaleProvider>(context, listen: false,).setLocale(L10N.supportedLocales[2],);
                },
                child: const Text('TR'),
              ),
            ],
          )
        ],
      ),
    );
  }

}