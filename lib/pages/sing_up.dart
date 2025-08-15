import 'package:coffe_app/utils/consts.dart';
import 'package:coffe_app/widgets/bigbutton.dart';
import 'package:coffe_app/widgets/custtxtfiled.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController repasscontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    phonecontroller.dispose();
    passcontroller.dispose();
    repasscontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        const Positioned(
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
                const Image(
                  image: logoimage,
                  height: 68.61,
                  width: 145,
                ),
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  ' Sign up',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const Text("Let's create you an account"),
                const SizedBox(
                  height: 75,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Custtxtfiled(
                        keyboardtype: const TextInputType.numberWithOptions(),
                        labeltext: 'Phonenumber',
                        textEditingController: phonecontroller,
                        prefixIcon: Icons.phone_android,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' enter phone number';
                          } else if (value.length != 10) {
                            return 'enter a valid phone number';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Custtxtfiled(
                        obscuretext: true,
                        keyboardtype: const TextInputType.numberWithOptions(),
                        labeltext: 'Password',
                        textEditingController: passcontroller,
                        prefixIcon: Icons.password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' plz enter password';
                          } else if (value.length < 6) {
                            return 'enter a password morethan 6';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Custtxtfiled(
                        obscuretext: true,
                        keyboardtype: const TextInputType.numberWithOptions(),
                        labeltext: 'Repassword',
                        textEditingController: repasscontroller,
                        prefixIcon: Icons.password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' plz enter password';
                          } else if (value.length < 6) {
                            return 'enter a password morethan 6';
                          }
                        },
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
                      const SizedBox(
                        height: 30,
                      ),
                      Bigbutton(
                          buttontext: 'Sign up',
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('sign up ..')));
                            } else {}
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("you have an account?"),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'sign in',
                              style: TextStyle(
                                  color: Color(0xffA97C37),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xffA97C37)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
