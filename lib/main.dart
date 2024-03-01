import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:landmark_citizen/core/config/colors.dart';
import 'package:landmark_citizen/core/config/helpers.dart';
import 'package:landmark_citizen/widgets/current_balance.dart';
import 'package:landmark_citizen/widgets/home_event_card.dart';
import 'package:landmark_citizen/widgets/home_menu_title.dart';
import 'package:landmark_citizen/widgets/menu_type_accordion.dart';
import 'package:landmark_citizen/widgets/menu_type_regular.dart';
import 'package:landmark_citizen/widgets/offerings_card.dart';
import 'package:landmark_citizen/widgets/quick_access.dart';
import 'package:landmark_citizen/widgets/quick_access_outline.dart';
import 'package:landmark_citizen/widgets/quick_access_rounded.dart';
import 'package:landmark_citizen/widgets/run_zest.dart';
import 'package:landmark_citizen/widgets/ticket_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF252D60)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // )
            // ,

            // SizedBox(
            //     width: AppHelpers.getProportionateScreenSize(size: 60),
            //     height: AppHelpers.getProportionateScreenSize(size: 60),
            //     child: TicketCounter(headerText: "Adult", color: AppColors.appPrimaryColor, bodyText: "13 and above", onTapPlus: () {}, onTapMinus: () {}, value: "12000")),
            // SizedBox(
            //   height: 2,
            // ),
            MenuTypeAccordion(onTap: (){}, image: "", title: "Group of 20", subtitle: "N157,000"),
            SizedBox(
              height: 2,
            ),
            MenuTypeRegular(onTap: () {}, image: "assets/icons/Ticket.png", title: "Beach Ticket", subtitle: "Buy a beach ticket"),
            SizedBox(
              height: 2,
            ),

            CurrentBalance(amount: 'N350,000', image: 'assets/icons/upside_down_house.png', title: 'Current Balance', onTap: () {  },),
            // SizedBox(height: 12,),
            // QuickAccessRounded(),
            // SizedBox(height: 12,),
            // QuickAccessOutline(),
            SizedBox(height: 12,),
            QuickAccess(),

            // SizedBox(
            //     height: MediaQuery.of(context).size.height * 0.9,
            //     width: MediaQuery.of(context).size.width * 0.9,
            //     child: const ZestConsumer())
          ],
        ),
      ),
        bottomNavigationBar: ConvexAppBar(
          color: AppColors.appWhiteColor,
          backgroundColor: AppColors.appPrimaryColor,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.wallet, title: 'Wallet'),
            TabItem(icon: Icons.add, title: 'Bookings'),
            TabItem(icon: Icons.message, title: 'Transaction'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int i) => print('click index=$i'),
        )
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
