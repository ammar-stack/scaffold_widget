import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random abc = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Next PM of Pakistan',
              style: GoogleFonts.albertSans(fontSize: 25, color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: x == 1
                ? Container(
                    height: 400,
                    width: 250,
                    color: Colors.green,
                    child: const Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/f/ff/Imran_Ahmed_Khan_Niazi_-_UNGA_%2848784380531%29_%28cropped%29.jpg'),height: 350,),
                  )
                : (x == 2
                    ? Container(
                        height: 400,
                        width: 250,
                        color: Colors.red,
                    child: const Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/4/46/PrimeMinisterNawazSharif.jpg'),height: 350,),
                      )
                    : Container(
                        height: 400,
                        width: 250,
                        color: Colors.black,
                    child: const Image(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/7/7b/General_Asim_Munir_%28Pakistan%29.jpg'),height: 350,),
                      )),
          ),
          floatingActionButton: FloatingActionButton.large(
            onPressed: () {
              x = Random().nextInt(3);
              setState(() {});
            },
            backgroundColor: Colors.black,
            child: const Icon(Icons.question_mark_sharp),
          ),
        ));
  }
}
