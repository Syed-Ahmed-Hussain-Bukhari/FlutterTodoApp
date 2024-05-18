 import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/MainPage/EditTask.dart';

var tit;
var disc;
var flagText;
var dTime;
var cat;
var catImage;

FetchTask(context,title,dis,flag,category,dateTime,categoryImage){
  return SingleChildScrollView(
    child: InkWell(
      onTap: (){
        tit=title;
         disc=dis; 
         flagText=flag;
         cat=category;
         dTime=dateTime;
         catImage=categoryImage;
         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EditTask()));
      },
      child: Container(
        width: double.infinity,
        height: 120,
        margin: const EdgeInsets.all(9),
        child: Card(
          child: Stack(
            children: [
              ListTile(
                tileColor: Color(0xff363636),
                title: Container(
                  margin: EdgeInsets.only(top: 6),
                  child: Text("${title}",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                subtitle: Column(
                  children: [
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Text("${dis}",style: TextStyle(color: Colors.white,fontSize: 16,)),
                      ],
                    ),
                    SizedBox(height: 3,),
                    Row(
                      children: [
                        Text("${dateTime}",style: TextStyle(color: Colors.white70,fontSize: 14,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
                leading: Icon(Icons.circle_outlined,color: Color(0xff363636),),
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff363636),
                border: Border.all(width: 1.5,
                color: Colors.white)
              ),
              margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.65,top: 12),
              padding: EdgeInsets.only(right: 4,bottom: 2),
              width:105 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Image.asset("${categoryImage}",width: 34,),
                  ),
                  Text("${category}",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 4,),
    
            //2
            Container(
              decoration: BoxDecoration(
                color: Color(0xff363636),
                border: Border.all(width: 1.5,
                color: Colors.white)
              ),
          margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.65,top: 12),
          padding: EdgeInsets.only(right: 4),
          width:95 ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/images/flag.png",width: 34,),
              ),
              Text("${flag}",style: TextStyle(color: Colors.white,fontSize: 16,))
            ],
          ),
        )
    
          ],
        ),
    
        Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 45,left: 12),
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.white,
                      )
                    ),
                    
                  ],
                ),
             
    
    
            ],
          ),
      ) ,
      ),
    ),
  );
 }