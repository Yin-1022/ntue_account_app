import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalPage extends StatefulWidget
{

  const CalPage({super.key});

  @override
  State<CalPage> createState() => _CalPageState();
}

class _CalPageState extends State<CalPage>
{
  int mode = 0;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Account", style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      body: Column
      (
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
        [
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
            [
              Column
              (
                children:
                [
                  IconButton
                  (
                    icon: Icon(Icons.money, size: 70,),
                    onPressed: ()
                    {
                      mode=0;
                    },
                  ),
                  Text("Income")
                ],
              ),
              Column
                (
                children:
                [
                  IconButton
                    (
                    icon: Icon(Icons.account_balance, size: 70),
                    onPressed: ()
                    {
                      mode=1;
                    },
                  ),
                  Text("Expense")
                ],
              )
            ],
          ),
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
            [
              Column
              (
                children:
                [
                  IconButton
                    (
                    icon: Icon(Icons.payment, size: 50,),
                    onPressed: (){},
                  ),
                  Text("Salary")
                ],
              ),
              Column
              (
                children:
                [
                  IconButton
                    (
                    icon: Icon(Icons.add_chart, size: 50),
                    onPressed: (){},
                  ),
                  Text("Stock")
                ],
              ),
              Column
                (
                children:
                [
                  IconButton
                    (
                    icon: Icon(Icons.house, size: 50),
                    onPressed: (){},
                  ),
                  Text("Passive")
                ],
              )
            ],
          ),
          SizedBox(height: 30,),
          Container
          (
            width: MediaQuery.of(context).size.width -80,
            child: SearchBar
            (

            ),
          ),
          SizedBox(height: 30,),
          Row
          (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
            [
              IconButton
              (
                icon: Icon(Icons.arrow_left_outlined, size: 50,),
                onPressed: (){},
              ),
              Text
              (
                  DateFormat('yyyy-MM-dd').format(DateTime.now()),
                  style: TextStyle
                  (
                    fontSize: 30
                  ),
              ),
              IconButton
                (
                icon: Icon(Icons.arrow_right_outlined, size: 50,),
                onPressed: (){},
              ),
            ],

          ),
          SizedBox(height: 30,),
          Column
          (
            children:
            [
              Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:
               [
                 TextButton
                 (
                   child: Text("7", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                   onPressed: (){},
                 ),
                 TextButton
                 (
                   child: Text("8", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                   onPressed: (){},
                 ),
                 TextButton
                 (
                   child: Text("9", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                   onPressed: (){},
                 ),
                 TextButton
                 (
                   child: Text("÷", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                   onPressed: (){},
                 ),
                 IconButton
                   (
                   icon: Icon(Icons.brush, size: 50,),
                   onPressed: (){},
                 ),
               ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  TextButton
                    (
                    child: Text("6", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("5", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("4", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("X", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  IconButton
                    (
                    icon: Icon(Icons.arrow_back, size: 50,),
                    onPressed: (){},
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  TextButton
                  (
                    child: Text("3", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("2", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("1", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("+", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("=", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  IconButton
                    (
                    icon: Icon(Icons.block, size: 50,),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("0", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  IconButton
                    (
                    icon: Icon(Icons.adjust, size: 50,),
                    onPressed: (){},
                  ),
                  TextButton
                    (
                    child: Text("-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    onPressed: (){},
                  ),
                  IconButton
                  (
                    icon: Icon(Icons.check, size: 50,),
                    onPressed: (){},
                  ),
                ],
              ),
            ],
          ),
        ]
      ),
    );
  }
}
