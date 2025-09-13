import 'package:flutter/material.dart';

class Custtxtfiled extends StatelessWidget {
  TextEditingController textEditingController ;
  String labeltext;
  bool obscuretext;
  IconData prefixIcon;
  TextInputType keyboardtype;
  Icon? suffix;
  
  final String? Function(String?)? validator;
  Custtxtfiled({super.key,required this.labeltext, this.obscuretext= false,required this.textEditingController,required this.prefixIcon, this.validator, this.keyboardtype=TextInputType.text,
  this.suffix});

  @override
  Widget build(BuildContext context) {
    return
              TextFormField(
      controller:textEditingController ,
      keyboardType: keyboardtype,
                  validator: validator,
                obscureText:obscuretext,
                decoration: InputDecoration(
                
                  prefixIcon: Icon(prefixIcon),
                  labelText: labeltext,
                  border:const OutlineInputBorder(),
                  suffixIcon: InkWell(
                    onTap: (){},
                    child: suffix),
                ),
                
              );
              
  }
}