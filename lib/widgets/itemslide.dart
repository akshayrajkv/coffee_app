import 'package:coffe_app/utils/consts.dart';
import 'package:flutter/material.dart';

class Itemslide extends StatelessWidget {
  String image;
  String name;
  String price;
  Itemslide(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 100,
        width: 200,
        decoration: const BoxDecoration(
            color: Color(0XFF272220),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 76,
              width: 76,
              decoration: const BoxDecoration(
                  color: Color(0XFF37302D),
                  borderRadius: BorderRadius.all(Radius.circular(90))),
              child: Image.asset(height: 52.85, width: 34.04, image),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name),
                Text(
                  price,
                  style: const TextStyle(color: pricetextcolor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
