import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

class MenuTypeAccordion extends StatelessWidget {
  const MenuTypeAccordion({super.key,
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
    List benefits = ['1 Jet SKi', '1 Volleyball', '1 Movie Ticket'];
    return Accordion(
      headerBorderColorOpened: Colors.white,
      headerBorderColor: Colors.grey,
      headerBorderWidth: 1,
      headerBackgroundColorOpened: Colors.white,
      headerBackgroundColor: Colors.white,
      contentBackgroundColor: Colors.white,
      contentBorderColor: Colors.grey,
      contentHorizontalPadding: 20,
      scaleWhenAnimating: true,
      openAndCloseAnimation: true,

      headerPadding:
      const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
      children: [
      AccordionSection(
      isOpen: false,
      contentVerticalPadding: 20,
      // leftIcon:
      // const Icon(Icons.text_fields_rounded, color: Colors.white),
      header: Padding(
        padding:  const EdgeInsets.only(left: 16.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(
                color: Color(0xff000000), fontSize: 14, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5,),
            Text(subtitle, style: const TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.normal)),
          ],
        ),
      ),
      content: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              itemCount: benefits.length,
              itemBuilder: (context, index) {
                String item = benefits[index];

                return ListTile(
                  title: Text(item, style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal
                  ),),
                );
              },
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              decoration: BoxDecoration(
                color: const Color(0xFF252D60),
                borderRadius: BorderRadius.circular(16)
              ),
              child: const Text('Continue', style: TextStyle(
                  color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    ),
    ]
    );
  }
}
