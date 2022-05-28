import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'locale_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppRoot(),);
}

class AppRoot extends StatelessWidget{
  const AppRoot({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context,) {
    return ChangeNotifierProvider(
        create: (context,) => LocaleProvider(),
        child: const MyApp(),
    );
  }

}


