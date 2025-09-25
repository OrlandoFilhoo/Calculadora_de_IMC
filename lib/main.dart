import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App IMC - SENAC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const MyHomePage(title: 'App IMC - SENAC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300.0,
              height: 150.0,
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                  ),

                  Text('170', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.only(left: 105.0),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ),
                ],
              ),
            ),
            SizedBox(height: 30.0),

            /*Padding(
              padding: const EdgeInsets.only(top: 10),
              ou então
              padding: const EdgeInsets.All( 10),
              child: Container(
                width: 300.0,
                height: 150.0,
                decoration: BoxDecoration(color: Colors.blueAccent,),
              ),
            ),*/

            Container(
              width: 300.0,
              height: 150.0,
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                  ),

                  Text('170',style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.only(left: 105.0),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  ),
                  
                ],
                
              ),
            ),

            SizedBox(height: 30.0),

            //textos
            Text(
              'Resultado:',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'NORMAL',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28.0),
            ),

            /*Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),*/
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
