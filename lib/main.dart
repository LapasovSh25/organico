import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:organico/provider/auth/sing_in_provider.dart';
import 'package:organico/provider/auth/sing_up_provider.dart';
import 'package:organico/provider/home/home_page_provider.dart';
import 'package:organico/routes/router.dart';
import 'package:provider/provider.dart';

void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => SingUpProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => SingInProvider(),
      ),
       ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      ),
    ],
    child: OrganicoApp(),
  ));
}
class OrganicoApp extends StatelessWidget {
  const OrganicoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterGenerator.router.onGenerate,
      initialRoute: 'splashScreen',
    );
  }
}
