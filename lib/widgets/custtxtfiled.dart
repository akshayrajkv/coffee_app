import 'package:flutter/material.dart';

class Custtxtfiled extends StatelessWidget {
  TextEditingController textEditingController ;
  String labeltext;
  bool obscuretext;
  IconData prefixIcon;
  Custtxtfiled({super.key,required this.labeltext, this.obscuretext= false,required this.textEditingController,required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return 
    TextField(
                obscureText:obscuretext,
                decoration: InputDecoration(
                
                  prefixIcon: Icon(prefixIcon),
                  labelText: labeltext,
                  border:const OutlineInputBorder(),
                ),
                
              );
  }
}