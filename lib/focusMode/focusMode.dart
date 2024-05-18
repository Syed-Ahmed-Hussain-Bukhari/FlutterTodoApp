

import 'package:flutter/material.dart';

class MyFocusMode extends StatelessWidget {
  const MyFocusMode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body:
        SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
              Center(
                child: Container(
                  child:Text("FocusMode",style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold)),
                ),
              ), 
              SizedBox(height: 12,),
              Image.asset("assets/images/Group 307.png"),
              SizedBox(height: 18,),
               Center(
                child: Container(
                  child:Text("While your focus mode is on, all of you",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ), 
              SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
              Center(
                child: Container(
                  child:Text("notifications will be off",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ), 
              SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
              
              TextButton(onPressed: (){
                              }, 
          
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
                          child: Text("Start Focusing",style: TextStyle(color: Colors.white,fontSize: 20)))
                        ),

              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        TextButton(onPressed: (){
                              }, 
          
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(9),
                          child: Text("Overview",style: TextStyle(color: Colors.white,fontSize: 20)))
                        ),
          
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          child: TextButton(onPressed: (){
                                     }, 
                                  
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 62, 61, 61)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[ Text("This week",style: TextStyle(color: Colors.white,fontSize: 20)),
                              SizedBox(width: 12,),
                              Icon(Icons.arrow_downward_sharp,color: Colors.white,)
                              ]
                            ))
                          
                          ),
                        ),
                      ],),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      SizedBox(
                      height:MediaQuery.sizeOf(context).height*0.32,
                      width: double.infinity,
                      child:Center(child: Image(image: AssetImage("assets/images/Group 303.png"))),
                    ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                      children:[ Container(
                        padding: EdgeInsets.all(12),
                        child:Text("Applications",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
                      ]
                     ), 

                     SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),

                     Image.asset("assets/images/App Box.png"),
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      Image.asset("assets/images/Frame 200.png"),
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      Image.asset("assets/images/Group 304.png"),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      Image.asset("assets/images/Frame 198.png"),

                     SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                      Image.asset("assets/images/Frame 197.png"),
                     SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),

                     





               


              
            ],
          )
        )
      ),
    );
  }
}