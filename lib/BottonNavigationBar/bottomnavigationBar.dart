import 'package:flutter/material.dart';
import 'package:todo_app/MainPage/calenderPage.dart';
import 'package:todo_app/MainPage/indexPage.dart';
import 'package:todo_app/Profile/profile.dart';
import 'package:todo_app/focusMode/focusMode.dart';


class   BottomNaviagtionBarPage extends StatefulWidget {
  const BottomNaviagtionBarPage({super.key});

  @override
  State<BottomNaviagtionBarPage> createState() => _BottomNaviagtionBarPage();
}

class _BottomNaviagtionBarPage extends State<BottomNaviagtionBarPage> {
   
   int selectedtab=0;
   List pages=[
    Center(
      child: MyIndexPage(),
    ),

    Center(
      child: MyTaskPage(),
    ),

    Center(
      child: MyFocusMode(),
    ),

    Center(
      child: MyProfilePage(),
    ),
   ];

   chnageTab(int index){
    setState(() {
      selectedtab=index;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                 body :pages[selectedtab],
                 bottomNavigationBar: BottomNavigationBar(
                  
                  currentIndex: selectedtab,
                  onTap: (index) => chnageTab(index) ,
                  fixedColor: Colors.white,
                 
                  items: const [
                  
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.white,),
                  label: "Index",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,color: Colors.white,),
                  label: "Calender",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.alarm,color: Colors.white,),
                  label: "Focuse",backgroundColor: Color.fromARGB(255, 29, 29, 29)),
                  BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.white,),
                  label: "Profile",backgroundColor: Color.fromARGB(255, 29, 29, 29))
                 ],
                 
                 
                 ),
                 

    );
              
  }
}