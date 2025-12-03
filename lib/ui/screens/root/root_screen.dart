import 'package:fitness_app/core/constant/colors.dart';
import 'package:fitness_app/core/constant/strings.dart';
import 'package:fitness_app/ui/screens/home/home_screen.dart';
import 'package:fitness_app/ui/screens/profile/profile_screen.dart';
import 'package:fitness_app/ui/screens/root/root_view_model.dart';
import 'package:fitness_app/ui/screens/workout/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootViewModel(),
      child: Consumer<RootViewModel>(
        builder: (context, model, child) => Scaffold(
          body: screens[model.selectedIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(gradient: primary),
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    model.onClick(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons_assets/homeLogo.png",
                        scale: 4,
                        color: model.selectedIndex == 0
                            ? Colors.blue
                            : Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: model.selectedIndex == 0
                              ? Colors.blue
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    model.onClick(1);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons_assets/workoutLogo.png",
                        scale: 4,
                        color: model.selectedIndex == 1
                            ? Colors.blue
                            : Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Workout",
                        style: TextStyle(
                          color: model.selectedIndex == 1
                              ? Colors.blue
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    model.onClick(2);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons_assets/profileLogo.png",
                        scale: 4,
                        color: model.selectedIndex == 2
                            ? Colors.blue
                            : Colors.white,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: model.selectedIndex == 2
                              ? Colors.blue
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
