import 'package:flutter/material.dart';

void main(){}
class NextApp extends StatefulWidget {
  const NextApp({super.key});

  @override
  State<NextApp> createState() => _NextAppState();
}

class _NextAppState extends State<NextApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text("2-Oyna"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
          child: MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Orqaga",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
