import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Center(child: Text('NTUE Account App', style: TextStyle(fontSize: 30)))),

      body: Column(
        children: [
          Container(height: 30,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('monthly', style: TextStyle(fontSize: 30)),
                  Text('expenses:', style: TextStyle(fontSize: 30)),
                ],
              ),
              Container(width: 100,),
              Column(
                children: [
                  Text('monthly', style: TextStyle(fontSize: 30)),
                  Text('income:', style: TextStyle(fontSize: 30)),
                ],
              ),
            ],
          ),
          Container(height: 100,),
          Container(width: 400, height: 2, color: Colors.grey,),
          Container(height: 500,),
          Container(width: 400, height: 2, color: Colors.grey,),
          Container(height: 30,),
          IconButton(onPressed: (){}, icon: Icon(Icons.home))
        ],
      ),
    );
  }
}
