import 'package:coffe_app/utils/consts.dart';
import 'package:flutter/material.dart';

class Itemtile extends StatelessWidget {
   String name;
   String price;
   String itemimage;
   VoidCallback ontap;
    bool isSelected;
   Itemtile({super.key,required this.name,required this.isSelected,required this.itemimage,required this.ontap,required this.price});

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.only(right: 12),
    child: GestureDetector(
      onTap: ontap,
      child: Container(
        width: 120,
        decoration:  BoxDecoration(
            color:isSelected?const Color(0XFF55433C):const Color(0XFF272220),
            borderRadius:const BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                  height: 76,
                  width: 76,
                  decoration: BoxDecoration(
                      color:isSelected?const Color(0XFFA97C37):const Color(0XFF37302D),
                      borderRadius:const BorderRadius.all(Radius.circular(90))),
                  child: Image.asset(
                    height: 52.85,
                    width: 34.04,
                    itemimage,
                  )),
                  const SizedBox(height: 10,),
              Text(name),
              Text(price,style:const TextStyle(color: pricetextcolor),),
            ],
          ),
        ),
      ),
    ),
  );;
  }
}