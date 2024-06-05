import 'package:flutter/material.dart';
import 'package:untitled23/asosiy.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text("1-Oyna"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
          child: MaterialButton(
            onPressed: () {
              showDialog(context: context, builder: (_)=> AlertDialog(
                title: Text("Ilovani o'chirasizmi"),
                actions: [

                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Yo'q")),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Ha")),
                ],
              ));
            },
            child: Text(
              "Chiqar",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
