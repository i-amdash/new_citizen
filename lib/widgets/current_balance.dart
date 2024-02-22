import 'package:flutter/material.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({Key? key}) : super(key: key);

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
                 const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current Balance', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      Text('N250,000', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  ElevatedButton(
                    clipBehavior: Clip.hardEdge,
                    onPressed: () {
                    print('wallet top up');
                  }, child: const Text('Top Up Wallet', style: TextStyle(
                    color: Color(0xFF252D60)
                  ),),)
                ],
              ),

              ClipRRect(
                child: Image.asset("assets/icons/upside_down_house.png", height: 100, width: 100, fit: BoxFit.fill,),
              )
            ]
          ),
        ),
      ),
    );
  }
}
