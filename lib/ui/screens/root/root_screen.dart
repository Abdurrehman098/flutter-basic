import 'package:fitness_app/core/constant/colors.dart';
import 'package:fitness_app/core/constant/strings.dart';
import 'package:fitness_app/ui/screens/home/home_screen.dart';
import 'package:fitness_app/ui/screens/profile/profile_screen.dart';
import 'package:fitness_app/ui/screens/workout/workout_screen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();

}

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = 0;
  List<Widget> Screens = [ HomeScreen() , WorkoutScreen() , ProfileScreen()];
  onClick(index){
    setState(() {
      selectedIndex = index ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: primary,
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                onClick(0);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [

                  Image.asset("assets/Icons_assets/homeLogo.png", scale: 4, color: selectedIndex == 0 ? Colors.grey : Colors.white,),
                  SizedBox(height: 5,),
                  Text("Home" ,style: TextStyle(color: selectedIndex == 0 ? Colors.grey : Colors.white),),
                ],


              ),
            ),
            InkWell(
              onTap:(){
                onClick(1);
              }
              ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [
                  Image.asset("assets/Icons_assets/workoutLogo.png", scale: 4,color: selectedIndex == 1 ? Colors.grey : Colors.white,),
                  SizedBox(height: 5,),
                  Text("Workout" ,style: TextStyle(color: selectedIndex == 1 ? Colors.grey  :Colors.white),)
                ],


              ),
            ) ,
            InkWell(
              onTap: (){
                onClick(2);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [
                  Image.asset("assets/Icons_assets/profileLogo.png", scale: 4,color: selectedIndex ==2 ? Colors.grey : Colors.white,),
                  SizedBox(height: 5,),
                  Text("Profile" ,style: TextStyle(color: selectedIndex ==2 ? Colors.grey :Colors.white),)
                ],


              ),
            )

          ],
        ),



      ),
    );
  }
}
