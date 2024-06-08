import 'package:flutter/material.dart';
import 'package:todo_app/AuthView.dart/LoginView.dart';
import 'package:todo_app/AuthView.dart/SignUpView.dart';
import 'package:todo_app/IntroPage/page2.dart';

class third_page extends StatelessWidget {
  const third_page({super.key}); 

  @override
  Widget build(BuildContext context) {
    return thirdPages(context,Colors.grey,Colors.grey,Colors.white,"Organize your tasks","You can Organize your daily tasks by","adding your tasks into separate categories","GET STARTED");
  }
}


thirdPages(context,Color firstColor,Color secondColor,Color thirdColor, String main_text,String text1,String text2,String button_text){

  return Scaffold(
        backgroundColor: Colors.black,
           body: ListView(
            children:[
              Container(            
                child: Column(
                  children: [
                     SizedBox(height: 12,),
                     Row(
                       children:[ 
                        Container(
                                           padding: EdgeInsets.only(left: 15,right: 12,top: 25),
                                           child: const Text("SKIP",style: TextStyle(color: Colors.grey,fontSize: 18,)),
                                         ),
                       ]
                     ),
              // picture
              SizedBox(
                height:MediaQuery.sizeOf(context).height*0.32,
                child:Image.asset("assets/images/page3.png",scale: 11,)
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
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
                ),
              ),

              Center(
                child: Container(
                  // width: double.infinity,
                  padding: EdgeInsets.only(top:4),
                  child: Text(text2,
                  style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
                ),
              ),
               
              SizedBox(height:MediaQuery.sizeOf(context).height*0.08,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>second_page()));
                }, 
                child: Text("BACK",style: TextStyle(color: Colors.grey,fontSize: 18))
                ),

                TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login_signUp_option(context)));
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


/////////////////
login_signUp_option(context){

  return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>third_page()));
      }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,))
    ),
     body:Center(
          child: SingleChildScrollView(
            child: Column(children: [
                SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                  Container(
            child:Text("Welcome to UpTodo",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
                  Container(
            child:Text("Pleasee login to your account or create",style: TextStyle(color: Colors.grey,fontSize: 18,)),
                  ),
                  Container(
            child:Text("new account to continue",style: TextStyle(color: Colors.grey,fontSize: 18,)),
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).height*0.45,),
             
             Container(
              padding: EdgeInsets.all(12),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                  
                           },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                  ), 
                  child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            
            SizedBox(height: 10,),
             Container(
              margin: EdgeInsets.only(left: 12,right: 12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff8875FF),
                  width: 2
                )
              ),
              // padding: EdgeInsets.all(12),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SingUpPage()));
                  },
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black
                  ), 
                  child: Text("CREATE ACCOUNT",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                ),
              ),
            ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
             
             Center(child: Container(width: MediaQuery.sizeOf(context).width*0.48,height: 5,color: Colors.white,)),
            
          
                  ],
                  ),
          ),
        ),
      
    
  );
}