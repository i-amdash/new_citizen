// ...

import 'package:flutter/material.dart';
import 'package:flutter_zest/flutter_zest.dart';

class ZestConsumer extends StatefulWidget {
  const ZestConsumer({super.key});
  @override
  State<ZestConsumer> createState() => _ZestConsumerState();
}

class _ZestConsumerState extends State<ZestConsumer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Zest(
            env: Env.test,
            customerEmail: "osodiq@gmail.com",
            description: "A purchase",
            onSuccess: (reference) {
              print("Success");
            },
            amountInMinor: "1000000",
            apiKey: "PK_8F728D9326476E9A44F020250219110357",
            onInitFailed: (reason) {
              print(reason);
            },
          )),
    );
  }
}