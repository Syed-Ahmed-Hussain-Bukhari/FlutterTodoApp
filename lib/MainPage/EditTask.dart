import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/AddTodoTask/addTodoTask.dart';
import 'package:todo_app/MainPage/calenderPage.dart';
import 'package:todo_app/Utils/utility.dart';

class EditTask extends StatefulWidget {
  const EditTask({super.key});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {

var flag="1";   
var todoCategory="University";
var todoCategoryImage="assets/images/mortarboard 1.png";


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

        FirebaseFirestore.instance.collection("Users").doc(taskId).update({ 
                          "date":date
                        });
        taskDate=date;
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

     FirebaseFirestore.instance.collection("Users").doc(taskId).update({ 
                          "time":time
                        });
                taskTime=time;
                 setState(() {
                          
                        });
    }

      
}


flagContainer(String txt){
   return  Expanded(
                     child: Container(
                      margin: EdgeInsets.all(6),
                       child: TextFormField(
                        readOnly: true,
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
                      padding: EdgeInsets.only(left: 30,right: 30,bottom: 10,top: 10),
                      decoration: BoxDecoration(
                        color: utils.mybgColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 2,color: utils.primaryColor)
                      ),
                      child: Text("Cancel",style: TextStyle(color: utils.myWhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),),
           
                  ),

                     GestureDetector(
                    onTap: ()async{
                       await FirebaseFirestore.instance.collection("Users").doc(taskId).update({
                          "Flag":flag
                       }).then((value) => Navigator.pop(context));
                       flagText=flag;
                       setState(() {
                         
                       });
                      
                    },
                    child:  Container(
                      padding: EdgeInsets.only(left: 30,right: 30,bottom: 10,top: 10),
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


 categoryDialogBox(context){
    return showDialog(context: context, builder: (context)=>AlertDialog(
      contentPadding: EdgeInsets.only(left: 4,right: 4),
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
                  
                  category(context, Image.asset("assets/images/bread 1.png"), "Groceroy","assets/images/bread 1.png"),
                  category(context, Image.asset("assets/images/briefcase 1.png"), "Work","assets/images/briefcase 1.png"),
                            ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  category(context, Image.asset("assets/images/sport 1.png"), "Sport","assets/images/sport 1.png"),
                  category(context, Image.asset("assets/images/design (1) 1.png"), "Design","assets/images/design (1) 1.png"),
                          ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                       category(context, Image.asset("assets/images/Vector.png"), "Home","assets/images/Vector.png"),
                  category(context, Image.asset("assets/images/megaphone 1.png"), "Social","assets/images/megaphone 1.png")
                ],
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  category(context, Image.asset("assets/images/music (1) 1.png"), "Music","assets/images/music (1) 1.png"),
                  category(context, Image.asset("assets/images/heartbeat 1.png"), "Health","assets/images/heartbeat 1.png"),
                        ],
              ),

              Row(
                children: [
                  category(context, Image.asset("assets/images/video-camera 1.png"), "Movie","assets/images/video-camera 1.png"),
                  category(context, Image.asset("assets/images/mortarboard 1.png"), "University","assets/images/mortarboard 1.png"),
                  
                ],
              ),
              SizedBox(height: 20,),
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
                      onTap: ()async{
                        FirebaseFirestore.instance.collection("Users").doc(taskId).update({
                          "category":todoCategory,
                          "categoryImage":todoCategoryImage

                        }).then((value) => Navigator.pop(context));

                        cat=todoCategory;
                        catImage=todoCategoryImage;
                        setState(() {
                          
                        });                           
                           
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
               ),
               SizedBox(height: 20,),



              
            ],
          ),
        ),
      ),
    ));
   }


category(context,Image image,String txt,String categoryImagePath){
  return Expanded(
    child: Container(
     margin: EdgeInsets.all(6),
      child: TextFormField(
        readOnly: true,
       onTap:  (){
       todoCategory=txt;
       todoCategoryImage=categoryImagePath;
       
         setState(() {
           
         });
     },
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utils.mybgColor,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 12,top: 30),
                  child: IconButton(onPressed: (){
      
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyTaskPage()));
                  
                  }, icon: Icon(Icons.cancel,color: Colors.white,size: 35,)),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.02,
            ),
            InkWell(
              onTap: (){
              
               showDialog(context: context, builder: (context)=>AlertDialog(
                 contentPadding: EdgeInsets.all(25),
        backgroundColor:utils.mybgColor,
        content: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: Text("Edit Task",style: TextStyle(color: utils.myWhiteColor,fontSize: 22),),),
                SizedBox(height: 20,),
                TextFormField(
                  
                  controller: titleController..text=tit.toString(),
                  cursorColor: utils.myWhiteColor,
                  style: TextStyle(color: utils.myWhiteColor,fontSize: 19),
                  decoration: const InputDecoration(
                    //  hintText: "Edit task title",
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
                controller: discriptionController..text=disc.toString(),
                style: TextStyle(color: utils.myWhiteColor,fontSize: 19),
                cursorColor: utils.myWhiteColor,
                  decoration: const InputDecoration(
                    
                    //  hintText: "Description",
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                       GestureDetector(
                      onTap: (){
                         Navigator.pop(context);
                      },
                      child:  Container(
                        padding: EdgeInsets.only(left: 30,right: 30,bottom: 10,top: 10),
                        decoration: BoxDecoration(
                          color: utils.mybgColor,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2,color: utils.primaryColor)
                        ),
                        child: Text("Cancel",style: TextStyle(color: utils.myWhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),),
             
                    ),
      
                       GestureDetector(
                      onTap: ()async{
                        
                           await FirebaseFirestore.instance.collection("Users").doc(taskId).update({
                            "Discription":discriptionController.text.toString(),
                            "title":titleController.text.toString()
                          }).then((value) =>  Navigator.pop(context));
                              tit=titleController.text.toString();
                              disc=discriptionController.text.toString();
                              setState(() {
                                
                              });
                         },
                      child:  Container(
                        padding: EdgeInsets.only(left: 30,right: 30,bottom: 10,top: 10),
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
            ),
              ]
          )
        ),
               )));
                
              },
              child: Container(
            
                 width: double.infinity,
                 height: 120,
                 margin: const EdgeInsets.all(9),
                child: Card(
                  color: utils.mybgColor,
                  child: ListTile(
                    leading:Image.asset("assets/images/Ellipse 15.png"),
                    title:Container(
                                margin: EdgeInsets.only(top: 6),
                                child: Text("${tit}",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
                   subtitle: Container(
                                margin: EdgeInsets.only(top: 6),
                                child: Text("${disc}",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
                     trailing: InkWell(
                      onTap: (){
            
                      },
                      child: Image.asset("assets/images/edit-2.png"))
                  ),
                ),
              ),
            ),
              SizedBox(
              height: MediaQuery.sizeOf(context).height*0.03,
            ),
            InkWell(
              // onTap: (){
              //   showDialog(context: context, builder: (context)=>AlertDialog(
              //     contentPadding: EdgeInsets.all(25),
              //      backgroundColor:utils.mybgColor,
              //     content: SingleChildScrollView(
                    
              //       child: Column(
              //         children: [
                        
              //           Row(
              //             children: [
              //               InkWell(
              //                 onTap: (){
              //                   Navigator.pop(context);
              //                 },
              //                 child: Icon(Icons.cancel_outlined,color:utils.myWhiteColor,),
              //               )
              //             ],
              //           ),
              //           SizedBox(height: 15,),
              //           Container(
              //             child:Text("Edit Task Time and Date",style: TextStyle(color: utils.myWhiteColor,fontSize: 16,fontWeight: FontWeight.bold),)
              //           ),
              //           Container(
              //             child:Text("--------------------------------------------",style: TextStyle(color: utils.myWhiteColor,fontSize: 16,fontWeight: FontWeight.bold),)
              //           ),
              //             SizedBox(height: MediaQuery.sizeOf(context).height*0.05,),
              //    Center(
              //      child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //           Container(
              //             child: Row(
              //               children: [
              //                  InkWell(
              //              onTap: (){
              //                selectTime(context);
                            
              //              },
              //              child:Container(
              //             margin: EdgeInsets.only(top:0),
              //             child: Icon(Icons.calendar_month_outlined,color: Colors.grey,)),                 ),
              //             SizedBox(width: 15,),
                 
              //            GestureDetector(
              //           onTap: ()async{
              //            selectDate(context);                     
           
              //           },
              //           child:Image.asset("assets/images/timer.png") 
              //         ),
              //               ],
              //             ),
              //           ),
              //         InkWell(
              //           onTap: (){
                          //     var _datetime="${date} at ${time}";
                          // FirebaseFirestore.instance.collection("Users").doc(id).update({
                          //   "datetime":_datetime
                          // }).then((value) => Navigator.pop(context));
                          // // dTime=_datetime;
                          // setState(() {
                            
                          // });
              //           },
              //           child: Container(
              //             child: Image.asset("assets/images/send.png"),
              //           ),
              //         )
                 
                   
              //       ],
              //                  ),
              //    )
      
              //         ],
              //       ),
              //     ),
              //   ));
              // },
              onTap: (){
                selectDate(context);
                      
              },
              child: ListTile(
                leading:  Icon(Icons.calendar_month_outlined,color: Colors.grey,),
                title: Container(
                  child: Text("Task Date:",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
                trailing: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12),
                
                  decoration: BoxDecoration(
                    color: Color(0xff363636),
                    border: Border.all(width: 1.5,
                    color: Colors.white)
                  ),
                  // margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.65,top: 12),
                  padding: EdgeInsets.only(right: 4,bottom: 2,left: 8),
                  width:115 ,
                  child: Container(
                    alignment: Alignment.center,
                    child: Center(child: Text("${taskDate}",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold))),
                  ),
                ),
               
              ],
                    ),),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.03,
            ),
            InkWell(
              onTap: (){
                selectTime(context);   
                
              },
              child: ListTile(
                leading: Image.asset("assets/images/timer.png"),
                title: Container(
                  child: Text("Task Time:",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
                trailing: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                    color: Color(0xff363636),
                    border: Border.all(width: 1.5,
                    color: Colors.white)
                  ),
                  // margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.65,top: 12),
                  padding: EdgeInsets.only(right: 4,bottom: 2,left: 8),
                  width:115 ,
                  child: Container(
                    alignment: Alignment.center,
                    child: Center(child: Text("${taskTime}",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold))),
                  ),
                ),
               
              ],
                    ),
              ),
            ),
         
      
      
           SizedBox(
              height: MediaQuery.sizeOf(context).height*0.03,
            ),
            InkWell(
              onTap: (){
                   categoryDialogBox(context);
              },
              child: ListTile(
                leading: Image.asset("assets/images/tag.png"),
                title: Container(
                  child: Text("Task category:",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
                trailing: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff363636),
                    border: Border.all(width: 1.5,
                    color: Colors.white)
                  ),
                  // margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.65,top: 12),
                  padding: EdgeInsets.only(right: 4,bottom: 2),
                  width:115 ,
                  child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("${catImage}",width: 34,),
                        ),
                      
                        Text("${cat}",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                
              ),
            ),
         
             SizedBox(
              height: MediaQuery.sizeOf(context).height*0.03,
            ),
            InkWell(
              onTap: (){
              
               taskPriority(context);
              },
              child: ListTile(
                leading: Image.asset("assets/images/flag.png"),
                title: Container(
                  child: Text("Task priority",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
                
                trailing: Column(
              children: [
                 SizedBox(height: 4,),
                
                //2
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff363636),
                    border: Border.all(width: 1.5,
                    color: Colors.white)
                  ),
              // margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.65,top: 12),
              padding: EdgeInsets.only(right: 4),
              width:105 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("assets/images/flag.png",width: 34,),
                  ),
                  Text("${flagText}",style: TextStyle(color: Colors.white,fontSize: 16,))
                ],
              ),
                    )
                
               
                
              ],
                    ),
            
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*0.04,
            ),
            InkWell(
              onTap: ()async{
                await FirebaseFirestore.instance.collection("Users").doc(taskId).delete().then((value) => 
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyTaskPage()))
                ); 
              },
              child: ListTile(
                leading: Image.asset("assets/images/trash.png"),
                title: Container(
                  child: Text("Delete Task",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),)),
                
              ),
            ),
          ],
        ),
      )
    );
  }
}