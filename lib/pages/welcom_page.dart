import 'package:coffe_app/pages/login_page.dart';
import 'package:coffe_app/utils/consts.dart';
import 'package:coffe_app/widgets/bigbutton.dart';
import 'package:flutter/material.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image:welcomepagebackgroundimage,
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            const Center(
              child: Image(
                image: logoimage,
                height: 68.61,
                width: 145,
              ),
            ),
            //  SizedBox(height: 60,),
              Positioned(
              bottom: screenHight*0.37,
              left: screenwidth*0.20,
              child:const Text(
                "Find your favorite",
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
            ),

              Positioned(
              bottom: screenHight*0.30,
              left: screenwidth*0.19,
              child:const Text(
                "Coffee Taste!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: screenHight*0.23,
              left: screenwidth*0.18,
              child:const Text(
                textAlign: TextAlign.center,
                "We’re coffee shop, beer and wine bar,\n& event space for performing arts",
                style: TextStyle(
                  color: Color.fromARGB(174, 255, 255, 255),
                  fontSize: 16
                ),
              ),
            ),
            Positioned(
              bottom: screenHight*0.10,
              left: screenwidth*0.19,
              child: Bigbutton(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context) {
                    return const LoginPage();
                  },));
                },
                buttontext: 'Get Started',),
            ),
          ],
        ),
      ),
    );
  }
}
