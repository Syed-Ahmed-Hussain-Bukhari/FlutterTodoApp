
// import 'package:todo_app/Firease_services/firebase_database_services.dart';
// import 'package:todo_app/Utils/utility.dart';
// import 'package:flutter/material.dart';

// DateTime? datePicked;
// TimeOfDay? timePicked;

// Color flagColor1=Colors.black;
// Color flagColor2=Colors.black;
// Color flagColor3=Colors.black;
// Color flagColor4=Colors.black;
// Color flagColor5=Colors.black;
// Color flagColor6=Colors.black;
// Color flagColor7=Colors.black;
// Color flagColor8=Colors.black;
// Color flagColor9=Colors.black;
// Color flagColor10=Colors.black;

// TextEditingController titleController=TextEditingController();
// TextEditingController discriptionController=TextEditingController();

// Color myColor=flagColor1;

// category(context,Image image,String txt){
//   return Container(
//     margin: EdgeInsets.all(8),
//     child: Column(
//       children: [
//         Container(child: image),
//         SizedBox(height: 4,),
//         Container(child: Text(txt,style: TextStyle(color: utils.myWhiteColor,fontSize: 18,),),),
        
  
//       ],
//     ),
//   );
// }

// flagContainer(Image image,String txt){
//    return Container(
//     margin: EdgeInsets.all(6),
//     padding: EdgeInsets.only(top: 4),
//                 width:53,
//                 height: 62,
//                 color: myColor,
//                 child: Column(
//                   children: [
//                     image,
//                     SizedBox(height: 2,),
//                     Text(txt,style: TextStyle(color: Colors.grey,fontSize: 18),)
//                   ],
//                 ),
//                );
// }

// selectDate(context)async{
  
//   datePicked=await showDatePicker(
//     context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2050));
//     if(datePicked!=null){

//     }
// }

// selectTime(context) async{
  
//   timePicked=await showTimePicker(context: context, initialTime: TimeOfDay.now());
//   if(timePicked!=null){
     
//     }
// }

// Future<dynamic> taskPriority(BuildContext context)async{
//      return showDialog(
//       context: context,
//       builder: (context)=>AlertDialog(
//         contentPadding: EdgeInsets.all(25),
//         backgroundColor:utils.mybgColor,
//       content: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//                 Container(child: Text("Task Priority",style: TextStyle(color: utils.myWhiteColor,fontSize: 16,fontWeight: FontWeight.bold),),),
//                  SizedBox(height: 9,),
//                  const Divider(height:2,thickness: 1,),
//                 const SizedBox(height: 16,),
//               Row(
//                 children: [
//                   InkWell(
//                     onTap: (){
//                       flagColor1=Color(0xff8687E7);
                    
                      
                      
//                     },
//                     child:flagContainer(Image.asset("assets/images/flag.png"), "1"),
//                   ),
//                   flagContainer(Image.asset("assets/images/flag.png"), "2"),
//                   flagContainer(Image.asset("assets/images/flag.png"), "3"),
//                   flagContainer(Image.asset("assets/images/flag.png"), "4"),
//                 ],
//               ),
//               Row(
//                 children: [
//                   flagContainer(Image.asset("assets/images/flag.png"), "5"),
//                   flagContainer(Image.asset("assets/images/flag.png"), "6"),
//                   flagContainer(Image.asset("assets/images/flag.png"), "7"),
//                   flagContainer(Image.asset("assets/images/flag.png"), "8"),
//                 ],
//               ),
//               Row(
//                 children: [
//                   flagContainer(Image.asset("assets/images/flag.png"), "9"),
//                   flagContainer(Image.asset("assets/images/flag.png"),"10"),
//                 ],
//               ),
//               SizedBox(height: 25,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                      GestureDetector(
//                     onTap: (){
//                        Navigator.pop(context);
//                     },
//                     child:  Container(
//                       padding: EdgeInsets.only(left: 24,right: 24,bottom: 8,top: 8),
//                       decoration: BoxDecoration(
//                         color: utils.mybgColor,
//                         borderRadius: BorderRadius.circular(5),
//                         border: Border.all(width: 2,color: utils.primaryColor)
//                       ),
//                       child: Text("Cancel",style: TextStyle(color: utils.myWhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),),
           
//                   ),

//                      GestureDetector(
//                     onTap: (){

//                     },
//                     child:  Container(
//                       padding: EdgeInsets.only(left: 24,right: 24,bottom: 8,top: 8),
//                       decoration: BoxDecoration(
//                         color: utils.primaryColor,
//                         borderRadius: BorderRadius.circular(5),
//                         boxShadow: [
//                           BoxShadow(
//                             offset:const Offset(3, 5),
//                             color: utils.mybgColor
//                           )
//                         ]
//                       ),
//                       child: Text("Save",style: TextStyle(color: utils.myWhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),),
           
//                   ),

               
//                 ],
//               )
//             ], 
//           ),
//         ),
//       ),
//     )
//     );
// }


// Future<dynamic> dialogBox(context) async {
//    return showDialog(context: context, builder: (context)=>AlertDialog(
      
//       contentPadding: EdgeInsets.all(25),
//       backgroundColor:utils.mybgColor,
//       content: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(child: Text("Add Task",style: TextStyle(color: utils.myWhiteColor,fontSize: 22),),),
//               SizedBox(height: 20,),
//               TextFormField(
//                 controller: titleController,
//                 cursorColor: utils.myWhiteColor,
//                 style: TextStyle(color: utils.myWhiteColor,fontSize: 19),
//                 decoration: const InputDecoration(
//                    hintText: "Add task title",
//                    hintStyle: TextStyle(color: Color(0xff979797)),
//                    focusedBorder: OutlineInputBorder(
                    
//                     borderSide: BorderSide(
//                       width: 2,
//                       color: Color(0xff979797)
//                     )
//                    ),
//                     enabledBorder: OutlineInputBorder(
                    
//                     borderSide: BorderSide(
//                       width: 2,
//                       color: Color(0xff979797)
//                     )
//                    )
//                 ),
//               ),
//               SizedBox(height: 22,),
//              TextFormField(
//               controller: discriptionController,
//               style: TextStyle(color: utils.myWhiteColor,fontSize: 19),
//               cursorColor: utils.myWhiteColor,
//                 decoration: const InputDecoration(
                  
//                    hintText: "Description",
//                    hintStyle: TextStyle(color: Color(0xff979797)),
//                    focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       width: 2,
//                       color: Color(0xff979797)
//                     )
//                    ),
//                     enabledBorder:OutlineInputBorder(
//                     borderSide: BorderSide(
//                       width: 2,
//                       color: Color(0xff979797)
//                     )
//                    ), 
//               ),
//              ),
//              const SizedBox(height: 18,),
//              Row(
//               children: [
//              InkWell(
//                   onTap: (){
//                     selectDate(context);
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(top:0),
//                     child: Icon(Icons.calendar_month_outlined,color: Colors.grey,)),
//                 ),
//                 const SizedBox(width: 10,),
//               InkWell(
//                 onTap: (){
//                     selectTime(context);
//                 },
//                 child: Image.asset("assets/images/timer.png")),
//                 const SizedBox(width: 10,),
//                 InkWell(
//                   onTap: (){
//                     categoryDialogBox(context);
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(top:5),
//                     child: Image.asset("assets/images/tag.png")),
//                 ),
//                 const SizedBox(width: 10,),
//                 InkWell(
//                   onTap: (){
//                         taskPriority(context);
//                   },
//                   child: Image.asset("assets/images/flag.png")),
                
//                 Expanded(
//                   child: Align(
//                     alignment: Alignment.bottomRight,
//                      child:InkWell(
//                       onTap: (){
//                         //  addTodoTask(context, titleController.text.toString(), discriptionController.text.toString());
//                       },
//                       child: Image.asset("assets/images/send.png")), 
//                   ),
//                 )
//               ],
//              ),
//             ],
//           ),
//         ),
//       ),
//     ));
//    }


//    categoryDialogBox(context){
//     return showDialog(context: context, builder: (context)=>AlertDialog(
//       contentPadding: EdgeInsets.all(25),
//       backgroundColor: utils.mybgColor,
//       content: SingleChildScrollView(
//         child: Container(
//           child: Column(
            
//             children: [
//               Container(child: Text("Choose Category",style: TextStyle(color: utils.myWhiteColor,fontSize: 16,fontWeight: FontWeight.bold),),),
//                  SizedBox(height: 9,),
//                  const Divider(height:2,thickness: 1,),
//                 const SizedBox(height: 16,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   category(context, Image.asset("assets/images/Group 268.png"), "Work"),
//                   category(context, Image.asset("assets/images/Group 269.png"), "Sport"),
//                   category(context, Image.asset("assets/images/Group 270.png"), "Design")
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   category(context, Image.asset("assets/images/Group 271.png"), "University"),
//                   category(context, Image.asset("assets/images/Group 272.png"), "Social"),
//                   category(context, Image.asset("assets/images/Group 273.png"), "Music")
//                 ],
//               ),

//                Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   category(context, Image.asset("assets/images/Group 274.png"), "Health"),
//                   category(context, Image.asset("assets/images/Group 275.png"), "Movie"),
//                   category(context, Image.asset("assets/images/Group 276.png"), "Home")
//                 ],
//               ),

//               Row(
//                 children: [
//                   category(context, Image.asset("assets/images/Group 267.png"), "Groceroy"),
                  
//                 ],
//               ),
//               SizedBox(height: 16,),
//                Center(
//                  child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                        GestureDetector(
//                       onTap: (){
               
//                       },
//                       child:  InkWell(
//                         onTap: (){
//                           Navigator.pop(context);
//                         },
//                         child: Container(
//                           padding: EdgeInsets.only(left: 24,right: 24,bottom: 8,top: 8),
//                           decoration: BoxDecoration(
//                             color: utils.mybgColor,
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all(
//                               width: 2,
//                               color: Color(0xff8687E7)
//                             )
//                           ),
//                           child: Text("Cancel",style: TextStyle(color: utils.primaryColor,fontSize: 15,fontWeight: FontWeight.bold),),),
//                       ),
                          
//                     ),
               
//                        GestureDetector(
//                       onTap: (){
               
//                       },
//                       child:  Container(
//                         padding: EdgeInsets.only(left: 16,right: 16,bottom: 8,top: 8),
//                         decoration: BoxDecoration(
//                           color: utils.primaryColor,
//                           borderRadius: BorderRadius.circular(5),
//                           boxShadow: [
//                             BoxShadow(
//                               offset:const Offset(3, 5),
//                               color: utils.mybgColor
//                             )
//                           ]
//                         ),
//                         child: Text("Add Category",style: TextStyle(color: utils.myWhiteColor,fontSize: 15,fontWeight: FontWeight.bold),),),
                          
//                     ),
               
                 
//                   ],
//                              ),
//                )



              
//             ],
//           ),
//         ),
//       ),
//     ));
//    }