import 'package:flutter/material.dart';

class MenuTypeRegular extends StatelessWidget {
  const MenuTypeRegular({super.key,
    required this.onTap,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final VoidCallback onTap;
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 20.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 10  horizontally
                5.0, // Move to bottom 10 Vertically
              ),
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  ),),
                  SizedBox(
                    height: 2,
                  ),
                  Text(subtitle, style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                    fontSize: 12
                  ),),
                ],
              ),
            ),
            Image.asset(image)
          ],
        ),
      ),
    );
  }
}
