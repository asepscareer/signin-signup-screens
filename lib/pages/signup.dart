import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  final url = '/sign-up';

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 30, top: 50),
            child: IconButton(
              focusColor: Colors.white,
              hoverColor: Colors.white,
              splashColor: Colors.white,
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black87,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: SvgPicture.asset(
                    'images/signup.svg',
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 0, bottom: 50),
                  child: const Text(
                    "Create An Account!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: widthDevice * 0.025),
                  width: widthDevice * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: ListTile(
                    onTap: () {},
                    title: const Text("Continue with Facebook"),
                    leading: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: widthDevice * 0.025),
                  width: widthDevice * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: ListTile(
                    onTap: () {},
                    title: const Text("Continue with Apple"),
                    leading: const Icon(
                      Icons.apple,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: widthDevice * 0.025,
                  ),
                  child: const Text(
                    "or",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: widthDevice * 0.025),
                  width: widthDevice * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: ListTile(
                    onTap: () {},
                    title: const Text("Sign Up with Email"),
                    leading: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
