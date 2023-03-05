import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../../helpers/show_message.dart';


class SingUpProvider extends ChangeNotifier {
  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //variables
  bool isLoading = false;

  //to user sing up
  Future<dynamic> singUp() async {
    try {
      isLoading = true;
      notifyListeners();
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      isLoading = false;
      notifyListeners();
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showErrorMessage("Kuchsiz parol");
        isLoading = false;
        notifyListeners();
      } else if (e.code == 'email-already-in-use') {
        showErrorMessage("Email ishlatilgan");
        isLoading = false;
        notifyListeners();
      } else {
        showErrorMessage("Noma'lum xato");
        isLoading = false;
        notifyListeners();
      }
    }
  }
}
