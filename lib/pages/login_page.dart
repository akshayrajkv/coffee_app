import 'package:coffe_app/pages/home_screen.dart';
import 'package:coffe_app/pages/sing_up.dart';
import 'package:coffe_app/utils/consts.dart';
import 'package:coffe_app/widgets/bigbutton.dart';
import 'package:coffe_app/widgets/custtxtfiled.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final phonecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  static const String number ="9048446974";
  static const String password ="akshay@123";
  
  bool obscuretextt = true;
  @override
  void dispose() {
    phonecontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Custtxtfiled(
                      
                          keyboardtype: const TextInputType.numberWithOptions(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'enter your phone';
                            } else if (value.trim().length != 10) {
                              return 'enter a valid phonenumber';
                            }
                            return null;
                          },
                          labeltext: 'Phone number',
                          //  obscuretext:obscuretextt,
                          textEditingController: phonecontroller,
                          prefixIcon: Icons.phone_android
                          ),
                      const SizedBox(
                        height: 30,
                      ),
                      Custtxtfiled(
                        
                        suffix: InkWell(
                          onTap: (){
                            setState(() {
                              obscuretextt =!obscuretextt;
                            });
                          },
                          child: Icon(
                            obscuretextt
                                  ? Icons.visibility_off
                                  : Icons.visibility,                          color: const Color.fromARGB(177, 255, 255, 255),
                          ),
                        ),
                        // IconButton(
                        //     onPressed: () {
                        //       setState(() {
                        //         obscuretextt = !obscuretextt;
                        //       });
                        //     },
                        //     icon: Icon(obscuretextt
                        //         ? Icons.visibility
                        //         : Icons.visibility_off)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter the passwor';
                          } else if (value.trim().length < 6) {
                            return 'password should be 6 letters';
                          }
                          return null;
                        },
                        labeltext: 'PASSWORD',
                        textEditingController: passwordcontroller,
                        prefixIcon: Icons.password,
                        obscuretext: obscuretextt,
                      ),
                    ],
                  ),
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
                Bigbutton(
                  onTap: () {
                    print(passwordcontroller.text);
                    if (_formkey.currentState!.validate()) {
                      if ( phonecontroller.text.trim()==number &&
                        passwordcontroller.text.trim() ==password ) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('Enter valid phone number and password'),
                          ),
                        );
                      }
                    }
                
                  },
                  buttontext: 'Sign in',
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const SingUp();
                          },
                        ));
                      },
                      child: const Text(
                        'sign Up',
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
          ),
        ),
      ]),
    );
  }
}
