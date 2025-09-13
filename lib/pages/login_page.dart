// import 'package:coffe_app/pages/home_screen.dart';
// import 'package:coffe_app/pages/sing_up.dart';
// import 'package:coffe_app/utils/consts.dart';
// import 'package:coffe_app/widgets/bigbutton.dart';
// import 'package:coffe_app/widgets/custtxtfiled.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formkey = GlobalKey<FormState>();
//   final phonecontroller = TextEditingController();
//   final passwordcontroller = TextEditingController();

//   static const String number = "9048446974";
//   static const String password = "akshay@123";

//   bool obscuretextt = true;
//   @override
//   void dispose() {
//     phonecontroller.dispose();
//     passwordcontroller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//   resizeToAvoidBottomInset: true,
//       backgroundColor: const Color.fromARGB(248, 0, 0, 0),
//       body: Container(
//         // height: double.infinity,
//         // width: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: backgroundimage,
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Padding(
//       padding:
//           const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
//       child: SingleChildScrollView(
//         child: Form(
//           key: _formkey,
//           child: Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Center(
//                 child: Image(
//                   image: logoimage,
//                   height: 68.61,
//                   width: 145,
//                 ),
//               ),
//               const SizedBox(
//                 height: 90,
//               ),
//               const Text(
//                 ' Sign in',
//                 style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//               ),
//               const Text('We’ve already met!'),
//               const SizedBox(
//                 height: 100,
//               ),
//               Custtxtfiled(labeltext: 'Phone Number', textEditingController: phonecontroller, prefixIcon: Icons.phone_android),

//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 'Forgot password?',
//                 style: TextStyle(
//                   color: Color(0xffA97C37),
//                 ),
//               ),
//               Container(
//                 height: 2,
//                 width: 110,
//                 color: const Color(0xffA97C37),
//               ),
//               const SizedBox(
//                 height: 100,
//               ),
//               Bigbutton(
//                 onTap: () {
//                   print(passwordcontroller.text);
//                   if (_formkey.currentState!.validate()) {
//                     if (phonecontroller.text.trim() == number &&
//                         passwordcontroller.text.trim() == password) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const HomeScreen()),
//                       );
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content:
//                               Text('Enter valid phone number and password'),
//                         ),
//                       );
//                     }
//                   }
//                 },
//                 buttontext: 'Sign in',
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Don't have an account?"),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(context, MaterialPageRoute(
//                         builder: (context) {
//                           return const SingUp();
//                         },
//                       ));
//                     },
//                     child: const Text(
//                       'sign Up',
//                       style: TextStyle(
//                           color: Color(0xffA97C37),
//                           decoration: TextDecoration.underline,
//                           decorationColor: Color(0xffA97C37)),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//             ),
//       ),
//     );
//   }
// }
import 'package:coffe_app/pages/home_screen.dart';
import 'package:coffe_app/pages/sing_up.dart';
import 'package:coffe_app/utils/consts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CoffeeLoginPage(),
  ));
}

class CoffeeLoginPage extends StatefulWidget {
  const CoffeeLoginPage({super.key});

  @override
  State<CoffeeLoginPage> createState() => _CoffeeLoginPageState();
}

class _CoffeeLoginPageState extends State<CoffeeLoginPage> {
  final _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscurePassword = true;
 static const String number = "9900000000";
   static const String password = "abc@123";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: backgroundimage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Logo or Title
                const Image(
                  image: logoimage,
                  height: 68.61,
                  width: 145,
                ),

                const SizedBox(height: 90),

                const Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Center(
                  child: Text(
                    "We’ve already met!",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),

                const SizedBox(height: 100),

                
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Phone Number *",
                    labelStyle: const TextStyle(color: Colors.white70),
                    prefixIcon: const Icon(Icons.phone, color: Colors.white70),
                    filled: true,
                    fillColor: Colors.black54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter phone number";
                    }
                    return null;
                  },
                ),
            

                const SizedBox(height: 20),

                // Password field
                TextFormField(
                  controller: passwordController,
                  obscureText: obscurePassword,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Password *",
                    labelStyle: const TextStyle(color: Colors.white70),
                    prefixIcon: const Icon(Icons.lock, color: Colors.white70),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.black54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color(0xffA97C37),
                      //  decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Sign In button
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   // Do login logic here
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text("Login Successful")),
                      //   );
                      // }
                      
                                      
                  if (_formKey.currentState!.validate()) {
                    if (phoneController.text.trim() == number &&
                        passwordController.text.trim() == password) {
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Sign In",
                          style: TextStyle(fontSize: 18,color:Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SingUp(),));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xffA97C37),
                        //  decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
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
