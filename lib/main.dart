import 'package:flutter/material.dart';
import 'Testing.dart';

void main() => runApp(const MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue,
          Colors.blue,
          Colors.blue
        ])),
        child:  Padding(
          padding: EdgeInsets.fromLTRB(5,0,5,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Welcome Back', style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Log in', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
            SizedBox(height: 50),
            Container(
              child: Expanded(
                child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)), color: Colors.white,),  
               child: Padding(padding: EdgeInsets.fromLTRB(15, 50, 15, 0),
               child: Column(
                children: [
                 Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      color: Color.fromARGB(255, 179, 209, 235),
                      blurRadius: 20,
                      offset: Offset(0, 10)
                    )]
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey)
                          ),
                          
                        ),child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email or Phone Number',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey)
                          ),
                          
                        ),child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none
                          ),
                        ),
                      )
                    ],
                  ),
                 ),
                 SizedBox(height: 40,),
                 Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Text('Forgot password? ', style: TextStyle(color: Colors.grey),)),

                  SizedBox(height: 30,),

                  Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(255, 86, 155, 211)
                    ),
                    child: Container(
                      width: 150,
                      child: Center(child: Text('Log in', style: TextStyle(color: Colors.white),)), )
                  ),
                  SizedBox(height: 30,),
                  Text('Continue with social media...', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                          ),
                           child: Center(child: Text('Facebook',  style: TextStyle(color: Colors.white)))     
                        ),

                      ),
                      SizedBox(width: 10,),

                      Expanded(
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black
                          ),
                      child: Center(child: Text('Github', style: TextStyle(color: Colors.white),))     
                        ),
                      
                      ),
                    ],
                  )
                ],
               ),
               ) ,
              )
              ),
            ),
          ],  
         ),
        )
      ),     
    );
  }
}
