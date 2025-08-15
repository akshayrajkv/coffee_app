import 'package:flutter/material.dart';

class Custtxtfiled extends StatefulWidget {
  TextEditingController textEditingController ;
  String labeltext;
  bool obscuretext;
  IconData prefixIcon;
  TextInputType keyboardtype;
  Widget? suffix;
  
  final String? Function(String?)? validator;
  Custtxtfiled({super.key,required this.labeltext, this.obscuretext= false,required this.textEditingController,required this.prefixIcon,required this.validator, this.keyboardtype=TextInputType.text,
  this.suffix});

  @override
  State<Custtxtfiled> createState() => _CusttxtfiledState();
}

class _CusttxtfiledState extends State<Custtxtfiled> {
  @override
  Widget build(BuildContext context) {
    return
    TextFormField(
      controller:widget.textEditingController ,
      keyboardType: widget.keyboardtype,
                  validator: widget.validator,
                obscureText:widget.obscuretext,
                decoration: InputDecoration(
                
                  prefixIcon: Icon(widget.prefixIcon),
                  labelText: widget.labeltext,
                  border:const OutlineInputBorder(),
                  suffix: widget.suffix,
                ),
                
              );
  }
}