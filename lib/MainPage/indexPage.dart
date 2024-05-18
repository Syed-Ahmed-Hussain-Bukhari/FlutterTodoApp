
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Firease_services/firebase_database_services.dart';
import 'package:todo_app/Utils/utility.dart';


class MyIndexPage extends StatefulWidget {
  const MyIndexPage({super.key});

  @override
  State<MyIndexPage> createState() => _MyIndexPageState();
}

class _MyIndexPageState extends State<MyIndexPage> {
  

/////////////////////////

var flag="1";   
var todoCategory="University";
var FireBase_flag="1";   
var FireBase_Category="University";


DateTime? datePicked=DateTime.now();
TimeOfDay? timePicked=TimeOfDay.now();

var time;
var date;

Color flagColor1=Colors.black;
Color flagColor2=Colors.black;
Color flagColor3=Colors.black;
Color flagColor4=Colors.black;
Color flagColor5=Colors.black;
Color flagColor6=Colors.black;
Color flagColor7=Colors.black;
Color flagColor8=Colors.black;
Color flagColor9=Colors.black;
Color flagColor10=Colors.black;

TextEditingController titleController=TextEditingController();
TextEditingController discriptionController=TextEditingController();

// Color myColor=flagColor1;

category(context,Image image,String txt){
  return Expanded(
    child: Container(
     margin: EdgeInsets.all(6),
      child: TextFormField(
       onTap:  (){
       todoCategory=txt;
         setState(() {
           
         });
     },
                  controller: titleController,
                  cursorColor: utils.mybgColor,
                  style: TextStyle(color: utils.myBlackColor,fontSize: 19),
                  decoration: InputDecoration(
                   contentPadding: EdgeInsets.all(6),
                   prefixIcon:Center(
                    child: Column(children: [
                      Center(child: image,),
                       SizedBox(height: 5,),
                      Container(child: Text(txt,style: TextStyle(color: utils.myWhiteColor,fontSize: 16,fontWeight: FontWeight.bold),),),
                 SizedBox(height: 3,),
                    ]),
                   ),
                   
       fillColor:Color(0xff121212), 
       filled: true,         
       hintText: "",
                         hintStyle: TextStyle(color: Colors.white),
                         focusedBorder: OutlineInputBorder(
                          
                          borderSide: BorderSide(
       width: 2,
       color: Color(0xff8687E7)
                          )
                         ),
                          enabledBorder: OutlineInputBorder(
                          
                          borderSide: BorderSide(
       width: 2,
       color: Colors.white
                          )
                         )
                  ),
                ),
    ),
  );
}

flagContainer(String txt){
   return  Expanded(
                     child: Container(
                      margin: EdgeInsets.all(6),
                       child: TextFormField(
                        onTap:  (){
                        flag=txt;
                          setState(() {
                            
                          });
                      },
                                   controller: titleController,
                                   cursorColor: utils.mybgColor,
                                   style: TextStyle(color: utils.myBlackColor,fontSize: 19),
                                   decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(6),
                                    prefixIcon:Center(
                                      child: Column(
                                        children: [
                                         SizedBox(height: 5,),
                                          Image.asset("assets/images/flag.png"),
                                          Container(child: Text(txt,style: TextStyle(color: utils.myWhiteColor,fontSize: 16,fontWeight: FontWeight.bold),),),
                                          SizedBox(height: 3,),
                                                ],
                                      ),
                                    ),
                                    
                        fillColor:Color(0xff121212), 
                        filled: true,         
                       hintText: "",
                                          hintStyle: TextStyle(color: Colors.white),
                                          focusedBorder: OutlineInputBorder(
                                           
                                           borderSide: BorderSide(
                        width: 2,
                        color: Color(0xff8687E7)
                                           )
                                          ),
                                           enabledBorder: OutlineInputBorder(
                                           
                                           borderSide: BorderSide(
                        width: 2,
                        color: Colors.white
                                           )
                                          )
                                   ),
                                 ),
                     ),
                   );

}

selectDate(context)async{
  
  datePicked=await showDatePicker(
    context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2050),
     builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.dark(
              // primary: Colors.yellow, // header background color
              // onPrimary: Colors.black, // header text color
              // onSurface: Colors.green, // body text color
              // // background: Colors.black
              // onBackground: Colors.black
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple
                // foregroundColor: Colors.red, // button text color
              ),
            ),
            // dialogBackgroundColor: Colors.blue
          ),
          child: child!,
        );
      },
    );
    if(datePicked!=null){

        if(datePicked?.month==1){
           date="${datePicked?.day}-Jan-${datePicked?.year}";
        }
        else if(datePicked?.month==2){
           date="${datePicked?.day}-Feb-${datePicked?.year}";
     
        }
        else if(datePicked?.month==3){
           date="${datePicked?.day}-Mar-${datePicked?.year}";
     
        }
        else if(datePicked?.month==4){
           date="${datePicked?.day}-Apr-${datePicked?.year}";
     
        }
        else if(datePicked?.month==5){
           date="${datePicked?.day}-May-${datePicked?.year}";
     
        }
        else if(datePicked?.month==6){
           date="${datePicked?.day}-June-${datePicked?.year}";
     
        }
        else if(datePicked?.month==7){
           date="${datePicked?.day}-Jul-${datePicked?.year}";
     
        }
        else if(datePicked?.month==8){
           date="${datePicked?.day}-Aug-${datePicked?.year}";
     
        }
        else if(datePicked?.month==9){
           date="${datePicked?.day}-Sep-${datePicked?.year}";
     
        }
        else if(datePicked?.month==10){
           date="${datePicked?.day}-Oct-${datePicked?.year}";
     
        }
        else if(datePicked?.month==11){
           date="${datePicked?.day}-Nov-${datePicked?.year}";
     
        }
        else if(datePicked?.month==12){
           date="${datePicked?.day}-Dec-${datePicked?.year}";
     
        }
        
         
         setState(() {
           
         });
    }
}

selectTime(context) async{
  
  timePicked=await showTimePicker(
    
    context: context, initialTime: TimeOfDay.now(),
    builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.dark(
              // primary: Colors.yellow, // header background color
              // onPrimary: Colors.black, // header text color
              // onSurface: Colors.green, // body text color
              // // background: Colors.black
              // onBackground: Colors.black
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple
                // foregroundColor: Colors.red, // button text color
              ),
            ),
            // dialogBackgroundColor: Colors.blue
          ),
          child: child!,
        );
      },
    );
  if(timePicked!=null){
    
     if(timePicked!.hour<=12){
           time="${timePicked?.hour}:${timePicked?.minute} PM"; 

     }
     else{
      time="${timePicked?.hour}:${timePicked?.minute} AM";
     }
    }
}

Future<dynamic> taskPriority(BuildContext context)async{
     return showDialog(
      context: context,
      builder: (context)=>AlertDialog(
        contentPadding: EdgeInsets.all(25),
        backgroundColor:utils.mybgColor,
      content: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
                Container(child: Text("Task Priority",style: TextStyle(color: utils.myWhiteColor,fontSize: 16,fontWeight: FontWeight.bold),),),
                 SizedBox(height: 9,),
                 const Divider(height:2,thickness: 1,),
                const SizedBox(height: 16,),
              Row(
                children: [

                  flagContainer("1"),
                  flagContainer("2"),
                  flagContainer("3"),
                  flagContainer("4"),
                   
                ],
              ),
              Row(
                children: [
                  flagContainer( "5"),
                  flagContainer( "6"),
                  flagContainer("7"),
                  flagContainer("8"),
                ],
              ),
              
               Row(
                children: [
                  flagContainer( "9"),
                  flagContainer( "10"),
                  flagContainer( "11"),
                  flagContainer( "12"),
                 
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                     GestureDetector(
                    onTap: (){
                       Navigator.pop(context);
                    },
                    child:  Container(
                      padding: EdgeInsets.only(left: 40,right: 40,bottom: 10,top: 10),
                      decoration: BoxDecoration(
                        color: utils.mybgColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 2,color: utils.primaryColor)
                      ),
                      child: Text("Cancel",style: TextStyle(color: utils.myWhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),),
           
                  ),

                     GestureDetector(
                    onTap: (){
                       FireBase_flag=flag;
                            setState(() {
                              
                            });
                      Navigator.pop(context);
                    },
                    child:  Container(
                      padding: EdgeInsets.only(left: 40,right: 40,bottom: 10,top: 10),
                      decoration: BoxDecoration(
                        color: utils.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            offset:const Offset(3, 5),
                            color: utils.mybgColor
                          )
                        ]
                      ),
                      child: Text("Save",style: TextStyle(color: utils.myWhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),),
           
                  ),

               
                ],
              )
            ], 
          ),
        ),
      ),
    )
    );
}


Future<dynamic> dialogBox(context) async {
   return showDialog(context: context, builder: (context)=>AlertDialog(
      
      contentPadding: EdgeInsets.all(25),
      backgroundColor:utils.mybgColor,
      content: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: Text("Add Task",style: TextStyle(color: utils.myWhiteColor,fontSize: 22),),),
              SizedBox(height: 20,),
              TextFormField(
                
                controller: titleController,
                cursorColor: utils.myWhiteColor,
                style: TextStyle(color: utils.myWhiteColor,fontSize: 19),
                decoration: const InputDecoration(
                   hintText: "Add task title",
                   hintStyle: TextStyle(color: Color(0xff979797)),
                   focusedBorder: OutlineInputBorder(
                    
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff979797)
                    )
                   ),
                    enabledBorder: OutlineInputBorder(
                    
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff979797)
                    )
                   )
                ),
              ),
              SizedBox(height: 22,),
             TextFormField(
              controller: discriptionController,
              style: TextStyle(color: utils.myWhiteColor,fontSize: 19),
              cursorColor: utils.myWhiteColor,
                decoration: const InputDecoration(
                  
                   hintText: "Description",
                   hintStyle: TextStyle(color: Color(0xff979797)),
                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff979797)
                    )
                   ),
                    enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff979797)
                    )
                   ), 
              ),
             ),
             const SizedBox(height: 18,),
             Row(
              children: [
             InkWell(
                  onTap: (){
                    selectDate(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:0),
                    child: Icon(Icons.calendar_month_outlined,color: Colors.grey,)),
                ),
                const SizedBox(width: 10,),
              InkWell(
                onTap: (){
                    selectTime(context);
                },
                child: Image.asset("assets/images/timer.png")),
                const SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    categoryDialogBox(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:5),
                    child: Image.asset("assets/images/tag.png")),
                ),
                const SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                        taskPriority(context);
                  },
                  child: Image.asset("assets/images/flag.png")),
                
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                     child:InkWell(
                      onTap: (){
                        var _datetime="${date} at ${time}";
                     

                        var categoryImage="assets/images/mortarboard 1.png";

                       if(todoCategory=="Groceroy"){
                           categoryImage="assets/images/bread 1.png";
                           
                       }
                       else if(todoCategory=="Work"){
                           categoryImage="assets/images/briefcase 1.png";
                           
                       }
                       else if(todoCategory=="Sport"){
                           categoryImage="assets/images/sport 1.png";
                           
                       }
                        else if(todoCategory=="Design"){
                           categoryImage="assets/images/design (1) 1.png";
                          
                       }
                        else if(todoCategory=="Home"){
                           categoryImage="assets/images/Vector.png";
                          
                       }
                        else if(todoCategory=="Social"){
                           categoryImage="assets/images/megaphone 1.png";
                           
                       }
                       else if(todoCategory=="Music"){
                           categoryImage="assets/images/music (1) 1.png";
                          
                       }
                       else if(todoCategory=="Health"){
                           categoryImage="assets/images/heartbeat 1.png";
                           
                       }
                       else if(todoCategory=="Movie"){
                           categoryImage="assets/images/video-camera 1.png";
                          
                       }
                       else if(todoCategory=="University"){
                           categoryImage="assets/images/mortarboard 1.png";
                           
                       }
                        setState(() {
                          
                        });
                         addTodoTask(context, titleController.text.toString(), discriptionController.text.toString(),FireBase_flag.toString(),FireBase_Category.toString(),_datetime.toString(),categoryImage);
                      },
                      child: Image.asset("assets/images/send.png")), 
                  ),
                )
              ],
             ),
            ],
          ),
        ),
      ),
    ));
   }


   categoryDialogBox(context){
    return showDialog(context: context, builder: (context)=>AlertDialog(
      contentPadding: EdgeInsets.all(50),
      backgroundColor: utils.mybgColor,
      content: SingleChildScrollView(
        child: Container(
          child: Column(
            
            children: [
              Container(child: Text("Choose Category",style: TextStyle(color: utils.myWhiteColor,fontSize: 16,fontWeight: FontWeight.bold),),),
                 SizedBox(height: 9,),
                 const Divider(height:2,thickness: 1,),
                const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  category(context, Image.asset("assets/images/bread 1.png"), "Groceroy"),
                  category(context, Image.asset("assets/images/briefcase 1.png"), "Work"),
                  category(context, Image.asset("assets/images/sport 1.png"), "Sport")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  category(context, Image.asset("assets/images/design (1) 1.png"), "Design"),
                  category(context, Image.asset("assets/images/Vector.png"), "Home"),
                  category(context, Image.asset("assets/images/megaphone 1.png"), "Social")
                ],
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  category(context, Image.asset("assets/images/music (1) 1.png"), "Music"),
                  category(context, Image.asset("assets/images/heartbeat 1.png"), "Health"),
                  category(context, Image.asset("assets/images/video-camera 1.png"), "Movie")
                ],
              ),

              Row(
                children: [
                  category(context, Image.asset("assets/images/mortarboard 1.png"), "University"),
                  
                ],
              ),
              SizedBox(height: 16,),
               Center(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                       GestureDetector(
                      onTap: (){
               
                      },
                      child:  InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 24,right: 24,bottom: 8,top: 8),
                          decoration: BoxDecoration(
                            color: utils.mybgColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: Color(0xff8687E7)
                            )
                          ),
                          child: Text("Cancel",style: TextStyle(color: utils.primaryColor,fontSize: 15,fontWeight: FontWeight.bold),),),
                      ),
                          
                    ),
               
                       GestureDetector(
                      onTap: (){
                            FireBase_Category=todoCategory;
                            setState(() {
                              
                            });
                           Navigator.pop(context);
                      },
                      child:  Container(
                        padding: EdgeInsets.only(left: 16,right: 16,bottom: 8,top: 8),
                        decoration: BoxDecoration(
                          color: utils.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              offset:const Offset(3, 5),
                              color: utils.mybgColor
                            )
                          ]
                        ),
                        child: Text("Add Category",style: TextStyle(color: utils.myWhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),),
                          
                    ),
               
                 
                  ],
                             ),
               )



              
            ],
          ),
        ),
      ),
    ));
   }


  //////////////////////////

  @override

  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list App',
      home: Scaffold(
        backgroundColor: Colors.black,
        
        appBar: AppBar(
          
          title: Text("Index",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: Icon(Icons.wifi,color: Colors.white,),
          backgroundColor: Colors.black,
          actions: [
            CircleAvatar(backgroundImage:AssetImage("assets/images/f1.jpg"),),
           SizedBox(width: 12,),
          ],
        ),
        body: SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
               Container(child: Image(image: AssetImage("assets/images/page1.png")),),
               SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
               Container(child: Text("What do you want to do today?",style: TextStyle(color: Colors.white,fontSize: 22,)),),
               Container(child: Text("Tap+ to add your tabs",style: TextStyle(color: Colors.white,fontSize: 20)),)

            ]
          )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff8687E7),
        onPressed: 
      (){

      },child: Center(
        child: IconButton(icon: const Icon(Icons.add,color: Colors.white,size: 25,),onPressed: (){
         dialogBox(context);
        },
        ),
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      )
      
    );
  }
}

