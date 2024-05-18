
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_app/IntroPage/page1.dart';



class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

@override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () { 
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>first_page()));
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body:Center(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.97,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                      Container(
                        child: const Icon(Icons.check_box_outlined,color: Colors.purple,size: 90,),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        child: const Text("UpTodo",style:TextStyle(
                          color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold
                        ),)
                      ),            
                      ],
                      
                    ) ,
                  ),
                  Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,),
                   ],
              ),
            ),
          ),
        ),
        ),
    );
  }
}




