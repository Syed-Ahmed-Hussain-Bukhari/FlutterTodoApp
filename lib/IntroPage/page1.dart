
import 'package:flutter/material.dart';
import 'package:todo_app/IntroPage/SplashScreen.dart';
import 'package:todo_app/IntroPage/page2.dart';

class first_page extends StatelessWidget {
  const first_page({super.key});

  @override
  Widget build(BuildContext context) {
    return firstPages(context,Colors.white,Colors.grey,Colors.grey,"Manage Your tasks","You can easily manage all of your daily","tasks in DoMe for free","NEXT");
  }
}


firstPages(context,Color firstColor,Color secondColor,Color thirdColor, String main_text,String text1,String text2,String button_text){

  return Scaffold(
        backgroundColor: Colors.black,
           body: ListView(
            children:[
              Container(
                height: MediaQuery.sizeOf(context).height*0.98,
                child: Column(
                  children: [
                     SizedBox(height: 12,),
                     Row(
                       children:[ Container(
                                           padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                                           child: const Text("SKIP",style: TextStyle(color: Colors.grey,fontSize: 18),),
                                         ),
                       ]
                     ),
              // picture
              SizedBox(
                height:MediaQuery.sizeOf(context).height*0.32,
               
                child:Image.asset("assets/images/page1.png",scale: 9,),
              ),
            
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children:[Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: firstColor,),
                SizedBox(width: 6,),
                Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: secondColor,),
                SizedBox(width: 6,),
                Container(width: MediaQuery.sizeOf(context).width*0.1,height: 3,color: thirdColor,)
                                  ] 
              ),

              SizedBox(height:MediaQuery.sizeOf(context).height*0.01,),
              
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                  child: Text(main_text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                ),
              ),

              SizedBox(height: 20,),
              
              Center(
                child: Container(
                  // width: double.infinity,
                  padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                  child: Text(text1,
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),

              Center(
                child: Container(
                  // width: double.infinity,
                  padding: EdgeInsets.only(top:10),
                  child: Text(text2,
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),
               
              SizedBox(height:MediaQuery.sizeOf(context).height*0.08,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashPage()));
                }, 
                child: Text("BACK",style: TextStyle(color: Colors.grey,fontSize: 18))
                ),

                TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>second_page()));
               
                }, 

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple
                ),
                child: Padding(
                   padding: EdgeInsets.only(left: 12,right: 12,top: 6,bottom: 6),
                  child: Text(button_text,style: TextStyle(color: Colors.white,fontSize: 18)))
                
                ),

              ],),
              SizedBox(height:MediaQuery.sizeOf(context).height*0.12,),
               Center(child: Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,)),

                  ],
                ), 
              ),

                         ]
           ),


      
    );
}