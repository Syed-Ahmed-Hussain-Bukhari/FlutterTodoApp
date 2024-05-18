import 'package:flutter/material.dart';
import 'package:todo_app/BottonNavigationBar/bottomnavigationBar.dart';
import 'package:todo_app/IntroPage/page3.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {

  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  var checkPassword=false;
  IconData? icon=Icons.visibility;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home:Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
       leading: IconButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login_signUp_option(context)));
      }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,))
        ),

        body: SingleChildScrollView(
          child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left:20),
              height: MediaQuery.sizeOf(context).height*0.91,
               child: SingleChildScrollView(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                     Container(
                    child:Text("Register",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
               
                  Container(
                    child:Text("Username",style: TextStyle(color: Colors.grey,fontSize: 20,)),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: TextField(
                      cursorColor: Colors.grey,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          )
                        ),
                       hintText: "Enter your Username",
                       hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
                  Container(
                    child:Text("Password",style: TextStyle(color: Colors.grey,fontSize: 20,)),
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Container(
                  margin: EdgeInsets.only(right: 20),
                    child: TextField(
                      obscureText: checkPassword,
                      cursorColor: Colors.grey,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                         suffixIcon: InkWell(
                          onTap: (){

                           if(checkPassword){
                            checkPassword=false;
                            icon=Icons.visibility;
                            setState(() {
                              
                            });
                           }  
                           else{
                             checkPassword=true;
                            icon=Icons.visibility_off;
                            setState(() {
                              
                            });
                           }
                           
                          },
                          child: Icon(icon,color: Colors.grey,)),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          )
                        ),
                       hintText: "Enter your Password",
                       hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                  Container(
                    child:Text("Confirm Password",style: TextStyle(color: Colors.grey,fontSize: 20,)),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: TextField(
                      obscureText: checkPassword,
                      cursorColor: Colors.grey,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                         suffixIcon: InkWell(
                          onTap: (){

                           if(checkPassword){
                            checkPassword=false;
                            icon=Icons.visibility;
                            setState(() {
                              
                            });
                           }  
                           else{
                             checkPassword=true;
                            icon=Icons.visibility_off;
                            setState(() {
                              
                            });
                           }
                           
                          },
                          child: Icon(icon,color: Colors.grey,)),
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,
                          )
                        ),
                       hintText: "Enter your Confirm Password",
                       hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),
                   SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
                  Container(
                  margin: EdgeInsets.only(right:20),
                  padding: EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));
                      },
                      child: Center(
                        child: Text("Register",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.white,),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),  
                    ),
                  ),
  ),
                 SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Container(
                       width:MediaQuery.sizeOf(context).width*0.4,
                        height: 1.5,
                        color: Colors.grey,
                     ),
                     SizedBox(width: 3,),
                    Container(child: Text("or",style: TextStyle(color: Colors.grey,fontSize: 20),),),
                      SizedBox(width: 3,),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                       width:MediaQuery.sizeOf(context).width*0.4,
                        height: 1.5,
                        color: Colors.grey,
                     ),
                    ],
                  ),
                 SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                            
                   Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xff8687E7),
                      )
                    ),
                  margin: EdgeInsets.only(right: 20),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.g_mobiledata_sharp,color: Colors.white,size: 40,),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));
                      },
                      label: Text("Login with Google",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.white,),
                      ),
                      
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        
                      ),  
                    ),
                  ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),

                   Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Color(0xff8687E7),
                      )
                    ),
                  margin: EdgeInsets.only(right: 20),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));  },
                      icon: Icon(Icons.facebook,color: Colors.white,size: 30,),
                      label: Text("Login with Facebook",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 20,color: Colors.white,),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),  
                    ),
                  ),
                             ),
                             SizedBox(height: 40,),
                             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: 
                    Text("Already have an account?",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 18,color: Colors.grey,),
                      ),),
                      InkWell(
                        onTap: (){
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login_signUp_option(context)));  
                        },
                        child: Container(child: 
                                          Text(" Login",style: TextStyle(fontFamily: "Gilroy-Bold",fontSize: 18,color: Colors.white,),
                        ),),
                      )
                  ],
                             )
                  
                             ],
                           ),
               )),
            Center(child: Container(width: MediaQuery.sizeOf(context).width*0.45,height: 5,color: Colors.white,)),
          
            ]
          )
      
        )
      ));
  }
}