

import 'package:fitness_app/ui/screens/home/home_screen.dart';
import 'package:fitness_app/ui/screens/profile/profile_screen.dart';
import 'package:fitness_app/ui/screens/workout/workout_screen.dart';
import 'package:flutter/cupertino.dart';

class RootViewModel extends ChangeNotifier{
  int selectedIndex = 0;

  onClick(index){
      selectedIndex = index ;
      notifyListeners();
    }
}
  List<Widget> screens = [ HomeScreen() , WorkoutScreen() ,ProfileScreen()];