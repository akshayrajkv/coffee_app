import 'package:coffe_app/utils/consts.dart';
import 'package:coffe_app/widgets/bigbutton.dart';
import 'package:coffe_app/widgets/custtxtfiled.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: const Color.fromARGB(248, 0, 0, 0),
      body: Stack(children: [
        const Positioned.fill(
          child: Image(
            image: backgroundimage,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: Image(
                    image: logoimage,
                    height: 68.61,
                    width: 145,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  ' Sign in',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const Text('We’ve already met!'),
                const SizedBox(
                  height: 100,
                ),
                Custtxtfiled(
                    labeltext: 'Phone number',
                    obscuretext: true,
                    textEditingController: phonecontroller,
                    prefixIcon: Icons.phone_android),
                const SizedBox(
                  height: 30,
                ),
                Custtxtfiled(
                  labeltext: 'PASSWORD',
                  textEditingController: passwordcontroller,
                  prefixIcon: Icons.password,
                  obscuretext: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color(0xffA97C37),
                  ),
                ),
                Container(
                  height: 2,
                  width: 110,
                  color: const Color(0xffA97C37),
                ),
                const SizedBox(
                  height: 100,
                ),
                Bigbutton(onTap: () {}, buttontext: 'Sign in'),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'sign Up',
                      style: TextStyle(
                          color: Color(0xffA97C37),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffA97C37)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
