import 'package:flutter/material.dart';

class Bigbutton extends StatelessWidget {
String buttontext;
VoidCallback onTap;

  Bigbutton({super.key,required this.buttontext,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
                onTap: onTap,
                child: Container(
                  height: 56,
                  width: 272,
                  decoration: const BoxDecoration(
                      color: Color(0xff55433C),
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(buttontext),
                
                const    Icon(Icons.arrow_forward,
                    color: Colors.white,)
                  ],
                ),
                ),
              );
  }
}