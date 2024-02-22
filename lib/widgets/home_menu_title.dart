import 'package:flutter/material.dart';

class HomeMenuTitle extends StatelessWidget {
  const HomeMenuTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text('Events', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
              Container(
                height: 3,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.orange
                ),
              )
            ],
          ),

          const InkWell(
            child: Text('See all', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    );
  }
}
