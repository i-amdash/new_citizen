import 'package:flutter/material.dart';


class OfferingsCard extends StatelessWidget {
  const OfferingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(child:
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const Image(image: AssetImage("assets/images/Blackout.jpeg"), height: 200, width: 140, fit: BoxFit.fill,))),
          Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 30,
              width: 60,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12)
              )
            ),
                child: const Center(
                  child:  Text('20%',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                ),
          ))
        ],
    );
  }
}
