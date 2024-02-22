import 'package:flutter/material.dart';

class QuickAccessOutline extends StatelessWidget {
  const QuickAccessOutline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        // color: Colors.grey[200],
        borderRadius: BorderRadius.circular(18),
          border: const Border(
            top: BorderSide(
                width: 3,
                color: Color(0xFF252D60),
                style: BorderStyle.solid), //BorderSide
            bottom: BorderSide(
                width: 3,
                color: Color(0xFF252D60),
                style: BorderStyle.solid), //BorderSide
            left: BorderSide(
                width: 3,
                color: Color(0xFF252D60),
                style: BorderStyle.solid), //Borderside
            right: BorderSide(
                width: 3,
                color: Color(0xFF252D60),
                style: BorderStyle.solid), //BorderSide
          ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/icons/SCAN.png", height: 60, width: 60,),
        const  Text("Scan To Pay",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10
          ),)
        ],
      ),
    );
  }
}
