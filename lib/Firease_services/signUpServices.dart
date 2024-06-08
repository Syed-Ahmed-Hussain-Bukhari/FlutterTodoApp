
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/BottonNavigationBar/bottomnavigationBar.dart';

signUp(context,email,password)async{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value) => 
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNaviagtionBarPage()))
        );
}