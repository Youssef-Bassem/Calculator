import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var userInput = "";
double answer = 0.0;
double LHS = 0.0;
String operator = '';

class Calculator extends StatefulWidget{
  @override
  State<Calculator> createState() => CalculatorButtons();
}
class CalculatorButtons extends State<Calculator>{
  Expanded operationButton(String operation) {
    return Expanded(
      child: FlatButton(
      onPressed: () {
        setState(() {
          if(operation == "C")
            onClearClick();
          else if(operation == "Del")
            onDelClick();
          else if(operation == "=")
            onEqualClick();
          else
            onOperationClick(operation);
        });
      },
      color: Colors.lightBlue,
      child:Text(
        operation,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    ),
    );
  }
  Expanded numberButton(String digit)
  {
    return Expanded (
      child:FlatButton(
      child: Text(
        digit,
        style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 25
        ),
      ),
      onPressed: () {
        setState((){
          userInput += digit;
        });
      },
      color:Colors.white,
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Calculator",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 25
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex:2,
            child: Text(
              userInput,
              style: TextStyle(
                height: 5,
                fontSize: 30,
                color: Colors.blue
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                numberButton("7"),
                numberButton("8"),
                numberButton("9"),
                operationButton("+"),
                operationButton("-"),
              ],
            ),
          ),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  numberButton("4"),
                  numberButton("5"),
                  numberButton("6"),
                  operationButton("*"),
                  operationButton("/"),
                ],
              ),
          ),
            Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  numberButton("1"),
                  numberButton("2"),
                  numberButton("3"),
                  operationButton("%"),
                  operationButton("="),
                ],
              ),
            ),
              Expanded(
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    numberButton("0"),
                    numberButton("."),
                    operationButton("Del"),
                    operationButton("C"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
void onOperationClick(String clickedOperator){
  if(operator.isEmpty) {
    operator = clickedOperator;
    LHS = double.parse(userInput);
    userInput = "";
  }
  else {
    userInput = calculate(LHS,operator,userInput);
  }
}

String calculate(double lhs, String clickedOperator, String userInput) {
  double rhs = double.parse(userInput);
  if(clickedOperator == "+"){
    answer = lhs + rhs;
  }
  else if(clickedOperator == "-"){
    answer = lhs - rhs;
  }
  else if(clickedOperator == "*"){
    answer = lhs * rhs;
  }
  else if(clickedOperator == "/"){
    answer = lhs / rhs;
  }
  else if(clickedOperator == "%"){
    answer = lhs % rhs;
  }
  else if(clickedOperator == "=") {
    onEqualClick();
  }
  return answer.toString();
}
void onEqualClick(){
  userInput = calculate(LHS, operator, userInput);
  operator = '';
  LHS = 0.0;
}
void onDelClick(){
  userInput = userInput.substring(0,userInput.length - 1);
}
void onClearClick(){
  userInput = "";
  LHS = 0.0;
  operator = "";
}