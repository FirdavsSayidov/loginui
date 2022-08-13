import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,
              colors: [
                Colors.grey.shade900,
                Colors.grey.shade800,
                Colors.grey.shade700,
                Colors.grey.shade700,
              ]
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height:70 ,),

            Padding(
              padding:  EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.normal),),

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right:20),
              child: Text('Welcome',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            SizedBox(height: 40,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight:Radius.circular(40),topLeft: Radius.circular(40),),

                    color: Colors.white,
                  ),

                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [SizedBox(height: 40,),
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,
                                boxShadow: [BoxShadow(
                                    color: Color.fromRGBO(171, 171, 171, 0.7),blurRadius: 20,offset: Offset(0,10)
                                )]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),padding: EdgeInsets.all(10),
                                  child: TextField(
                                    decoration:InputDecoration(
                                        hintText: 'Full Name',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none

                                    ),
                                  ),
                                ),
                                Container(padding:EdgeInsets.all(10),
                                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
                                  child: TextField(
                                    decoration:InputDecoration(
                                        hintText: 'Email',
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none

                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(color: Colors.grey),
                                      hintText: 'Phone',

                                    ),
                                  ),
                                ),
                                Container(padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                        hintStyle: TextStyle(color: Colors.grey)

                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                          SizedBox(height: 40,),
                          Container(height: 50,margin: EdgeInsets.only(left: 40,right: 40),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black54),
                            child: Center(
                              child: Text('SignUp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          SizedBox(height: 40,),
                          Text('Sign Up with Sns',style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 40,),
                          Row(
                            children: [
                              Expanded(
                                child: Container(child: Text('Facebook',style: TextStyle(color: Colors.white),),padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blue),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(child: Text('Google',style: TextStyle(color: Colors.white),),padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.red),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(child: Text('Apple',style: TextStyle(color: Colors.white),),padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ) ,
                )
            ),

          ],
        ),
      ),
    );
  }
}
