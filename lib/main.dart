import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/AddTodoTask/addTodoTask.dart';
import 'package:todo_app/BottonNavigationBar/bottomnavigationBar.dart';
import 'package:todo_app/IntroPage/SplashScreen.dart';
import 'package:todo_app/MainPage/EditTask.dart';
import 'package:todo_app/MainPage/calenderPage.dart';
import 'package:todo_app/MainPage/indexPage.dart';
import 'package:todo_app/firebase_options.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNaviagtionBarPage()


    );
  }
}


