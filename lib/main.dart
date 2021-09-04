import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Calculator.dart';

var userInput="";
var answer="";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(
      ),
    );
  }
}

// class Calculator extends StatefulWidget{
//   @override
//   State<Calculator> createState() => CalculatorButtons();
// }
// class CalculatorButtons extends State<Calculator>{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         title: Text(
//           "Calculator",
//           style: TextStyle(
//             color: Colors.white,
//             fontStyle: FontStyle.italic,
//           ),
//         ),
//       ),
//       body: Stack(
//         children: <Widget>[
//           Column(
//              mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 Text(
//                   userInput,
//                   style: TextStyle(
//                     height: 3,
//                     fontSize: 20,
//                   ),
//                   textAlign: TextAlign.right,
//                 ),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: <Widget>[
//                       numberButton("7"),
//                       numberButton("8"),
//                       numberButton("9"),
//                       operationButton("+",Icons.add),
//                       operationButton("-",Icons.remove),
//                     ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     numberButton("4"),
//                     numberButton("5"),
//                     numberButton("6"),
//                     operationButton("*",Icons.clear),
//                     operationButton("/",MdiIcons.division),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     numberButton("1"),
//                     numberButton("2"),
//                     numberButton("3"),
//                     operationButton(".",MdiIcons.percent),
//                     operationButton("=",MdiIcons.equal),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     numberButton("0"),
//                     operationButton(".",MdiIcons.decimal),
//                     operationButton(".",Icons.backspace),
//                     operationButton("clear",Icons.delete),
//                     // operationButton("clear",MdiIcons.commentRemove),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//        ),
//     );
//   }
// }
//
// void insertInString(String toInsert)
// {
//   setState() {
//     userInput += toInsert;
//   };
// }
// ButtonTheme numberButton(String number)
// {
//   return ButtonTheme(
//     minWidth: 69,
//     height: 90,
//     child:FlatButton(
//       child: Text(
//         number,
//         style: TextStyle(
//           color: Colors.cyan,
//           fontSize: 25
//         ),
//       ),
//       onPressed: ()
//       {
//           userInput += number;
//       },
//       color:Colors.white,
//       ),
//   );
// }
// Expanded operationButton(String operationType,IconData operationIcon)
// {
//   return Expanded(
//     child:ButtonTheme(
//         minWidth: 20,
//         height: 90,
//         child:RaisedButton.icon(
//         onPressed: ()
//         {
//
//         },
//         color:Colors.black,
//         label:Text(''),
//         icon: Icon(
//           operationIcon,
//           size:40,
//           color: Colors.teal,
//         ),
//       ),
//     ),
//   );
// }