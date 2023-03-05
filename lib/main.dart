import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:organico/provider/auth/sing_in_provider.dart';
import 'package:organico/provider/auth/sing_up_provider.dart';
import 'package:organico/routes/router.dart';
import 'package:organico/view/sing_in_page.dart';
import 'package:organico/view/sing_up_page.dart';
import 'package:organico/view/spalsh_screen.dart';
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
