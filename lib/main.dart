import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: DefaultTextStyle(
      style: GoogleFonts.poppins(),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraint) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: viewportConstraint.maxHeight),
          child: Container(
            color: Color(0xFFF3F3F8),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      const Text('Your Balance',
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0xFF082431))),
                      const Text('Rp 8.250.000',
                          style: TextStyle(
                              fontSize: 36.0, color: Color(0xFF2C2C63))),
                      const SizedBox(
                        height: 48.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 28.0, left: 28.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF32A7E2),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      IconlyBold.arrow_right,
                                      size: 24.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text(
                                  'Transfer',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Color(0xFF082431)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFB548C6),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      IconlyBold.download,
                                      size: 24.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text(
                                  'Top-up',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Color(0xFF082431)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFF8700),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      IconlyBold.wallet,
                                      size: 24.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text(
                                  'Bill',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Color(0xFF082431)),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6.0),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF22B07D),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      IconlyBold.category,
                                      size: 24.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                const Text(
                                  'More',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Color(0xFF082431)),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    ));
  }
}
