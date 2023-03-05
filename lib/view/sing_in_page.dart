import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:organico/provider/auth/sing_in_provider.dart';
import 'package:organico/view/screens/home_page.dart';
import 'package:provider/provider.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingInProvider(),
      builder: (context, child) {
        return _scaffold(context);
      },
    );
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 33, vertical: 46),
              child: Image.asset("assets/welcomePic.png"),
            ),
            Padding(
              padding: EdgeInsets.only(right: 307, left: 20),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Welcome to Organico Mobile Apps. Please fill in the field below to sign in. ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextFormField(
                controller: context.watch<SingInProvider>().emailController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Email",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(146, 146, 157, 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextFormField(
                controller: context.watch<SingInProvider>().passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(146, 146, 157, 1)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 266, right: 20, top: 24),
              child: InkWell(
                onTap: () async {
                  Navigator.pushNamed(context, 'singUpPage');
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(46, 204, 113, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 44),
              child: SizedBox(
                width: 374,
                height: 52,
                child: FloatingActionButton.extended(
                  onPressed: () async {
                    await context.read<SingInProvider>().singIn().then((value) {
                      if (value == true) {
                       Navigator.pushNamed(context, 'homePage');
                      }
                    });
                  },
                  label: !context.watch<SingInProvider>().isLoading
                      ? Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      : CircularProgressIndicator.adaptive(),
                  backgroundColor: Color.fromRGBO(170, 0, 35, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
