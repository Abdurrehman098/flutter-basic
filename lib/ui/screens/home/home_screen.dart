import 'package:fitness_app/core/constant/colors.dart';
import 'package:fitness_app/core/constant/strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 28, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello!" , style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14 , color: pinkColor),),
            Row(
              children: [
                RichText(text: TextSpan(

                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600 , color: Colors.black),
                    children: [
                      TextSpan(
                          text: "Find A "
                      ),
                      TextSpan(
                          text: "Challenge ", style: TextStyle(color: pinkColor)
                      )
                    ]
                )

                ),
                SizedBox(width: 150,),
                Icon(Icons.search, color: pinkColor , size: 30,)
              ],
            ),

            SizedBox(height: 20,),

            Stack(
              children: [
                Container(
                  width: 336,
                  height: 162,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("$staticAssets/homeBg.png" ,),fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 10,
                  left: 10,
                  child: Row(
                    children: [
                      Image.asset("$staticAssets/homeBgImg.png", width:129, height: 172,)
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                RichText(text: TextSpan(style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 20,color: whiteColor,

                ),
                  children: [
                    TextSpan(
                      text: "March"
                    )
                  ]
                ),

                )
              ],
            )


          ],
        ),


      ) ,
    );
  }
}
