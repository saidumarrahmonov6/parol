import 'package:flutter/material.dart';

void main(){}
class AsosApp extends StatefulWidget {
  const AsosApp({super.key});

  @override
  State<AsosApp> createState() => _AsosAppState();
}

class _AsosAppState extends State<AsosApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
            child: Icon(Icons.lock, size: 80,)
        ),
      )
    );
  }
}
