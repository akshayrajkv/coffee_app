import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
    String categoryName;
    IconData icon;
    VoidCallback onTap;
    bool isSelected;
    Categorycard({super.key,required this.categoryName,required this.icon,required this.onTap,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return  Padding(
    padding: const EdgeInsets.only(right: 20),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: Colors.white),
            color:
                isSelected ? const Color(0XFFA97C37) : const Color(0Xff1D1917),
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(categoryName)
          ],
        ),
      ),
    ),
  );
  }
}