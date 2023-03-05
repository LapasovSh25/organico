import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:organico/provider/auth/sing_up_provider.dart';
import 'package:organico/view/screens/home_page.dart';
import 'package:organico/view/sing_in_page.dart';
import 'package:provider/provider.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color.fromRGBO(146, 146, 157, 1);
      }
      return Colors.green;
    }

    return ChangeNotifierProvider(
      create: (context) => SingUpProvider(),
      builder: (context, child) {
        return _scaffold(getColor, context);
      },
    );
  }

  Scaffold _scaffold(
      Color getColor(Set<MaterialState> states), BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "New Registration",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Text(
                "It looks like you don’t have an account on this number. Please let us know some information for a secure service.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(146, 146, 157, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 10, top: 16, right: 310, left: 20),
              child: Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Full Name",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(146, 146, 157, 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 10, right: 340, left: 20),
              child: Text(
                "Email",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: context.watch<SingUpProvider>().emailController,
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
              padding: const EdgeInsets.only(
                  bottom: 10, top: 16, right: 320, left: 20),
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                controller: context.watch<SingUpProvider>().passwordController,
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
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                  Text("I accept the Terms of Use and Privacy Policy")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: SizedBox(
                width: 374,
                height: 52,
                child: FloatingActionButton.extended(
                  onPressed: () async {
                    await context.read<SingUpProvider>().singUp().then((value) {
                      if (value == true) {
                       Navigator.pushNamed(context, 'homePage');
                      }
                    });
                  },
                  label: !context.watch<SingUpProvider>().isLoading
                      ? Text(
                          "Sign Up",
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
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                "or use",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                width: 374,
                height: 52,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(100)),
                child: FloatingActionButton.extended(
                  onPressed: () {
                  Navigator.pushNamed(context, 'singInPage');
                  },
                  label: Text(
                    "Sing In",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
