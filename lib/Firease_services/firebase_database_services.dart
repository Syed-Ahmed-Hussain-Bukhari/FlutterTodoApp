
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

addTodoTask(context,String title,String dis,String flag,String category,String time,String categoryImage){
  final addTodo=FirebaseFirestore.instance.collection("Users");
  final add=addTodo.doc().set({
        "title":title,
        "Discription":dis,
        "Flag":flag,
        "datetime":time==null ? "${DateTime.now()} ${TimeOfDay.now()}" :time,
        "category":category,
        "categoryImage":categoryImage,

  }).then((value) => Navigator.pop(context));
}