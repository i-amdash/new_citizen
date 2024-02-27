import 'package:flutter/material.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({super.key,
    required this.onTap,
    required this.image,
    required this.title,
    required this.amount,
  });

  final VoidCallback onTap;
  final String image;
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: const BoxDecoration(
          color: Colors.white70
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 12, bottom: 12, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(
                        height: 2,
                      ),
                      Text(amount, style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                    onTap;
                  }, child: const Text('Top Up Wallet', style: TextStyle(
                    color: Color(0xFF252D60)
                  ),),)
                ],
              ),

              ClipRRect(
                child: Image.asset(image, height: 100, width: 100, fit: BoxFit.fill,),
              )
            ]
          ),
        ),
      ),
    );
  }
}
