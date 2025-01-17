import 'package:alqgp/Src/Screens/Authenticate/LogIn/login_footer_widget.dart';
import 'package:alqgp/Src/Screens/Authenticate/LogIn/login_header_widget.dart';
import 'package:alqgp/Src/Screens/Authenticate/LogIn/login_form_widget.dart';
import 'package:alqgp/Src/Utils/Consts/consts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LoginHeaderWidget(),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
