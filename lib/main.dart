import 'package:flutter/material.dart';
import 'package:signin_signup/pages/signin.dart';

import 'pages/signup.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/sign-in',
      routes: {
        const SignIn().url: (context) => const SignIn(),
        const SignUp().url: (context) => const SignUp(),
      },
    );
  }
}
