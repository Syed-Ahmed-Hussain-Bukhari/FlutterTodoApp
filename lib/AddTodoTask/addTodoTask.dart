
import 'package:flutter/material.dart';
import 'package:todo_app/MainPage/EditTask.dart';

var tit;
var disc;
var flagText;
var cat;
var taskTime;
var taskDate;
var catImage;
var taskId;

FetchTask(context,title,dis,flag,category,time,date,categoryImage,taskid){
  return SingleChildScrollView(
    child: InkWell(
      onTap: (){
        tit=title;
         disc=dis; 
         flagText=flag;
         cat=category;
         taskTime=time;
         taskDate=date;
         catImage=categoryImage;
         taskId=taskid;

         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EditTask()));
      },
      child: Container(
        width: double.infinity,
        height: 120,
        margin: const EdgeInsets.all(9),
        child: Card(
          color: Color(0xff363636),
          child: Stack(
            children: [
              ListTile(
                tileColor: Color(0xff363636),
                title: Container(
                  margin: EdgeInsets.only(top: 6),
                  child: Text("${title}",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
                subtitle: Container(
                  margin: EdgeInsets.only(top: 6),
                  child: Text("${date}",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)),
          
                leading:Image.asset("assets/images/Ellipse 15.png")
        ),
        Container(
          margin: EdgeInsets.only(right: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Color(0xff363636),
                      border: Border.all(width: 1.5,
                      color: Colors.white)
                    ),
                    // margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.65,top: 12),
                    padding: EdgeInsets.only(right: 4,bottom: 2),

                    width:105 ,
                    child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("${categoryImage}",width: 30,),
                          ),
                        
                          Text("${category}",style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  
                ],
              ),
              SizedBox(height: 4,),
            
              //2
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff363636),
                      border: Border.all(width: 1.5,
                      color: Colors.white)
                    ),
            // margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.65,top: 12),
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(right: 4),
            width:105 ,
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("assets/images/flag.png",width: 34,),
                    ),
                    Text("${flag}",style: TextStyle(color: Colors.white,fontSize: 16,))
                  ],
            ),
          ),
                ],
              )
            
            ],
          ),
        ),
    
            ],
          ),
      ) ,
      ),
    ),
  );
 }