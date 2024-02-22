import 'package:flutter/material.dart';

class HomeEventCard extends StatelessWidget {
  const HomeEventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      elevation: 12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            // clipBehavior: Clip.hardEdge,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12)
            ),
            child: Image.asset('assets/images/DISCOVERY_CENTRAL.webp',
                height: 80,
                width: 160,
                fit: BoxFit.fill,
          )),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
            child: Text('Blackout Event', style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500
            ),),
          )
        ],
      ),
    );
  }
}
