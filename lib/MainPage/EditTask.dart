import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/AddTodoTask/addTodoTask.dart';
import 'package:todo_app/BottonNavigationBar/bottomnavigationBar.dart';
import 'package:todo_app/MainPage/calenderPage.dart';
import 'package:todo_app/Utils/utility.dart';

class EditTask extends StatefulWidget {
  const EditTask({super.key});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utils.mybgColor,
      body:Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(12),
                child: IconButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()));
                
                }, icon: Icon(Icons.cancel,color: Colors.white,size: 35,)),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.02,
          ),
          Container(

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
            SizedBox(
            height: MediaQuery.sizeOf(context).height*0.03,
          ),
          ListTile(
            leading: Image.asset("assets/images/timer.png"),
            title: Container(
              child: Text("Task Time:",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
            trailing: Container(
              child: Text("${dTime}",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),

          ),
         SizedBox(
            height: MediaQuery.sizeOf(context).height*0.03,
          ),
          ListTile(
            leading: Image.asset("assets/images/tag.png"),
            title: Container(
              child: Text("Task category:",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
            trailing: Container(
              child: Text("4:30",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
          
          ),
       
           SizedBox(
            height: MediaQuery.sizeOf(context).height*0.03,
          ),
          ListTile(
            leading: Image.asset("assets/images/flag.png"),
            title: Container(
              child: Text("Task priority",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
            trailing: Container(
              child: Text("4:30",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
    
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.04,
          ),
          ListTile(
            leading: Image.asset("assets/images/trash.png"),
            title: Container(
              child: Text("Delete Task",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),)),
            
          ),
        ],
      )
    );
  }
}