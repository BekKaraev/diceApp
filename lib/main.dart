

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( const  MyApp());
}


class   MyApp extends StatefulWidget {
  const  MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int soljak = 3;

  int onjak = 1;

  void baskandajzgort() {
    Random random = Random();
    soljak = random.nextInt( 6,) +1;
    onjak = random.nextInt( 6,) +1;
   
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFF5353),
        appBar: AppBar(
          backgroundColor: const Color(0xffFF5353),
          elevation: 0.0,
          title: const Center(
            child: Text(
              'ТАПШЫРМА-05',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: baskandajzgort,
                    child: Image.asset('images/dice$soljak.png'),
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                Expanded(
                  child: InkWell(
                    onTap:baskandajzgort,
                    child: Image.asset('images/dice$onjak.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


 