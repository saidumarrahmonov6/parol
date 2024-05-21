import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String son = "";
  String parol = "1478";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 110),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Text(son , style: TextStyle(color: Colors.green ,fontSize: 50), textAlign: TextAlign.center,)),
                InkWell(
                  onTap: (){
                    setState(() {
                      son = son.substring(0 , son.length-1);
                      print(son);
                    });
                  },
                  child: Icon(Icons.backspace_outlined, size: 50,color: Colors.green,),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              block(1),
              block(2),
              block(3),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              block(4),
              block(5),
              block(6),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              block(7),
              block(8),
              block(9),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              block("*"),
              block(0),
              InkWell(
                onTap: (){
                  setState(() {
                    if(son == parol){
                      son= "To'gri";
                    } else if(son != parol){
                      son="";
                    }
                  });
                },
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Center(child: Text("Kirish", style: TextStyle(fontSize: 60 ,color: Colors.white, fontWeight: FontWeight.bold),)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  block(number){
    return InkWell(
      onTap: (){
        setState(() {
          if(son.length < 4){
            son += number.toString();
            print(son);
          }
          if(son == parol){
            son= "To'gri";
          } else if(son.length == 4 && son != parol){
            son="";
          }
        });
      },
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
        child: Center(child: Text(number.toString(), style: TextStyle(fontSize: 60 ,color: Colors.white, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
