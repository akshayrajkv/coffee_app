import 'package:coffe_app/utils/consts.dart';
import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  Container(
      
        decoration:const BoxDecoration(
        image: DecorationImage(image: backgroundimage,
        fit: BoxFit.cover),
        
        ),
  
      ),
    );
  }
}