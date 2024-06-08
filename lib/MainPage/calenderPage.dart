
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/AddTodoTask/addTodoTask.dart';
import 'package:todo_app/BottonNavigationBar/bottomnavigationBar.dart';
import 'package:todo_app/Utils/utility.dart';


class MyTaskPage extends StatefulWidget {
  const MyTaskPage({super.key});

  @override
  State<MyTaskPage> createState() => _MyTaskPageState();
}

class _MyTaskPageState extends State<MyTaskPage> {

 TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
           leading: Icon(Icons.wifi,color: Colors.white,),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: const [
             CircleAvatar(
              backgroundImage:NetworkImage("https://thumbs.dreamstime.com/b/silhouette-person-icon-black-circular-frame-silhouette-person-icon-black-circular-frame-vector-graphic-218821794.jpg"),),
              SizedBox(width: 12,),
          ],
        ),
        body:
        // Column(
        //   children: [
        //     SizedBox(height: 24,),
        //     Container(
        //       margin: EdgeInsets.all(12),
        //       child: TextField(
        //         style: const TextStyle(color: Colors.white,fontSize: 20),
        //         cursorColor: Colors.white,
        //         decoration: InputDecoration(
        //           prefixIcon: const Icon(Icons.search,color: Colors.grey,),
        //           hintText: "Search your Task...",
        //           hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
        //           enabledBorder: OutlineInputBorder(
        //                borderRadius: BorderRadius.circular(5),
        //                borderSide: BorderSide(
        //                 width: 2,
        //                 color: Colors.grey
        //                )
        //           ),
        //           focusedBorder: OutlineInputBorder(
        //                borderRadius: BorderRadius.circular(5),
        //                borderSide: BorderSide(
        //                 width: 2,
        //                 color: Colors.grey
        //                )
        //           )
        //         ),
        //       ),
        //     ),
            // SizedBox(height: 12,),
            // Container(
            //   color: Color(0xff4C4C4C),
            //   margin: EdgeInsets.only(left: 12,right: 12),
            //   child: Card(
            //     color: Color(0xff4C4C4C),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(top: 12,bottom: 12),
            //           padding: EdgeInsets.all(15),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(5),
            //             border: Border.all(
            //               width: 2,
            //               color: Colors.white
            //             )
            //           ),
            //           child: Center(
            //             child: Text("Today",style: TextStyle(color: Colors.white,fontSize: 22),),
            //           ),
            //         ),
            //          Container(
            //           padding: EdgeInsets.all(12),
            //           decoration: BoxDecoration(
            //             color: Color(0xff8687E7),
            //             borderRadius: BorderRadius.circular(5),
            //           ),
            //           child: Center(
            //             child: Text("Completed",style: TextStyle(color: Colors.white,fontSize: 22),),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            Column(
              children: [
                 Row(
                   children: [
                     InkWell(
                      onTap: (){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));

                      },
                       child: Container(
                        margin: EdgeInsets.only(left: 18,top: 20),
                                       child: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 30,),
                                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 40,),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                                  onChanged: (String value){
                                    setState(() {
                                      
                                    });
                                  },
                                  controller: searchController,
                                  cursorColor: utils.myWhiteColor,
                                  style: TextStyle(color: utils.myWhiteColor,fontSize: 16),
                                  decoration: const InputDecoration(
                     hintText: "Search your todo tasks.....",
                     hintStyle: TextStyle(color: Color(0xff979797)),
                     prefixIcon: Icon(Icons.search,color: Colors.white,),
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
                  ),
               SizedBox(height: 20,),

                StreamBuilder(
                  stream: FirebaseFirestore.instance.collection("Users").snapshots(), 
                  builder: (context,snapshot){
                   if(snapshot.connectionState==ConnectionState.active) {
                    if(snapshot.hasData){
                      return Expanded(
                        child: ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context,index){
                            final title=snapshot.data!.docs[index]["title"];
                            var dis=snapshot.data!.docs[index]["Discription"];
                            var flag=snapshot.data!.docs[index]["Flag"];
                            var category=snapshot.data!.docs[index]["category"];
                            var time=snapshot.data!.docs[index]["time"];
                            var date=snapshot.data!.docs[index]["date"];
                            var categoryImage=snapshot.data!.docs[index]["categoryImage"];
                             
                            var id=snapshot.data!.docs[index].id;

                            if(searchController.text.isEmpty){
                                return FetchTask(context,title.toString(),dis.toString(),flag.toString(),category.toString(),time.toString(),date.toString(),categoryImage,id.toString());
          
                            }
                            else if(title.toLowerCase().contains(searchController.text.toLowerCase().toLowerCase())){
                              return FetchTask(context,title.toString(),dis.toString(),flag.toString(),category.toString(),time.toString(),date.toString(),categoryImage,id.toString());
          
                            }
                            else {
                              return Container();
                            }
                           
                            
                                                            }
                                          ),
                      );
                    }
                  }
                  else{
                    return Center(child: CircularProgressIndicator(
                     backgroundColor: Colors.white,
                    ),);
                  }
                  return Container();
                  }
                  ),
              ],
            )      
            



        // ]
        // ),
        
    );
  }
}