import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter App",),backgroundColor: Colors.blue,centerTitle: true,),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text('You have pushed the button this many times:',style: TextStyle(fontSize: 18),),
          Text("$counter",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),)],),),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            counter+=1;
            });

        },child: Icon(Icons.add),),
      ),
    );
  }
}
