
import 'package:flutter/material.dart';

void main() {
runApp(



   MaterialApp(
     debugShowCheckedModeBanner:false ,
     home: MyApp() ,

   ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 var num1;
  var  num2;
  var  result;
 var output="";
 var operator="";


  void buttonpressed(String values){


    if(values=="c")
    {
      num1=0;
      num2=0;
      result="";
      output="";
      operator="";

    }
    else if(values=="+" ||values=="-"||values=="/"||values=="*"){
      num1=int.parse(output);
      result="";
      operator=values;

    }
    else if(values=="=" ){
      num2=int.parse(output);
    if( operator == "+" ){
      result=(num1+num2).toString();

    }
    if( operator == "-" ){
      result=(num1-num2).toString();

    }
    if( operator == "/" ){
      result=(num1/num2).toString();

    }
    if( operator == "*" ){
      result=(num1*num2).toString();


    }}
    else{
      result=int.parse(output+values).toString();

    }
    setState(() {
      output=result;

    });

  }
  @override


  Widget buttonclick(String values){
    return Expanded(child:MaterialButton(onPressed: ()=>buttonpressed(values),color: Colors.grey,child: Text('$values',style: TextStyle(fontSize: 30),),padding:EdgeInsets.all(30.0),));

  }



  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title:Text('Calculator'),centerTitle: true,),

      body:Column(mainAxisAlignment: MainAxisAlignment.end,

children: [

  SizedBox(height:10),

  Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [

      Text('$output',style:TextStyle(fontSize: 40),),

    ],
  ),

  SizedBox(height:20),


  Row(

  children: [
    buttonclick('/'),
    buttonclick('0'),
    buttonclick('c'),
    buttonclick('-'),
  ],
),



  Row(

    children: [
      buttonclick('7'),
      buttonclick('8'),
      buttonclick('9'),
      buttonclick('+'),
    ],
  ),




  Row(

    children: [
      buttonclick('4'),
      buttonclick('5'),
      buttonclick('6'),
      buttonclick('*'),
    ],
  ),





  Row(

    children: [
      buttonclick('1'),
      buttonclick('2'),
      buttonclick('3'),
      buttonclick('='),
    ],
  ),




  
],

      ),
    );
  }
}


