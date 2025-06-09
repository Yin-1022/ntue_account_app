import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: const Text('NUTE Account App'))),

        body: Column(
          children: [
            Container(height: 30),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Column(
                  children: [
                    Text('monthly', style: TextStyle(fontSize: 25)),
                    Text('expenses:', style: TextStyle(fontSize: 25)),
                  ],
                ),

                SizedBox(width: 150),

                Column(
                  children: [
                    Text('monthly', style: TextStyle(fontSize: 25)),
                    Text('income:', style: TextStyle(fontSize: 25)),
                  ],
                ),
              ],
            ),

            Container(height: 100),
            Container(width: 400, height: 2, color: Colors.grey,),
            Container(height: 500),
            Container(width: 400, height: 2, color: Colors.grey,),
            Container(height: 100),
            Icon(Icons.home, size: 50,)
          ],
        ),
      ),
    );
  }
}
