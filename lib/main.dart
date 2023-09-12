import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    final heightDevice = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: heightDevice * 0.1),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: SvgPicture.asset(
                  'images/welcome.svg',
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0, bottom: 50),
                child: const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: widthDevice * 0.8,
                margin: const EdgeInsets.only(bottom: 20),
                child: EmailTextField(),
              ),
              Container(
                width: widthDevice * 0.8,
                margin: const EdgeInsets.only(bottom: 20),
                child: PasswordTextField(),
              ),
              Container(
                width: widthDevice * 0.8,
                margin: const EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Log In"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: const Text(
                  "or",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: LoginVia(),
              ),
              const SignUp()
            ],
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.zero,
          ),
          child: const Text(
            " Sign Up",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

class LoginVia extends StatelessWidget {
  const LoginVia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: InkWell(
            onTap: () {},
            hoverColor: Colors.white,
            highlightColor: Colors.white,
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(
                Icons.facebook,
                color: Colors.blue,
                size: 25,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {},
            hoverColor: Colors.white,
            highlightColor: Colors.white,
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(
                Icons.apple,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EmailTextField extends StatefulWidget {
  @override
  EmailTextFieldState createState() => EmailTextFieldState();
}

class EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: true,
      autofocus: true,
      decoration: InputDecoration(
        labelText: "Email",
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1000,
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  @override
  PasswordTextFieldState createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'Password',
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1000,
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
    );
  }
}
