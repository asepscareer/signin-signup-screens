import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signin_signup/pages/signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  final url = '/sign-in';

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 0, bottom: 50),
            height: 150,
            width: 300,
            child: SvgPicture.asset(
              'images/signin.svg',
              height: 100,
              width: 100,
            ),
          ),
          Container(
            width: widthDevice * 0.8,
            margin: const EdgeInsets.only(bottom: 20),
            child: const EmailTextField(),
          ),
          Container(
            width: widthDevice * 0.8,
            margin: const EdgeInsets.only(bottom: 20),
            child: const PasswordTextField(),
          ),
          Container(
            width: widthDevice * 0.8,
            margin: const EdgeInsets.only(left: 5),
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const SuccessLogin();
                  },
                );
              },
              child: const Text("Login"),
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
          const SignUpButton()
        ],
      ),
    );
  }
}

class SuccessLogin extends StatelessWidget {
  const SuccessLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text("Login Success!"),
      actions: [
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
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
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const SuccessLogin();
                },
              );
            },
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
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const SuccessLogin();
                },
              );
            },
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
  const EmailTextField({super.key});

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
  const PasswordTextField({super.key});

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

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SignUp();
                },
              ),
            );
          },
        )
      ],
    );
  }
}
