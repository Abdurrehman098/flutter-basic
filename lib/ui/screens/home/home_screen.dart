import 'package:fitness_app/core/constant/colors.dart';
import 'package:fitness_app/core/constant/strings.dart';
import 'package:fitness_app/core/constant/text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Container(
      margin: EdgeInsets.only(left: 25,right: 25),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Hello!",style: TextStyle(color: pinkColor,fontWeight: FontWeight.w400,fontSize: 14),),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      RichText(text: TextSpan(
      children: [
      TextSpan(text: "Find A "),
      TextSpan(text: "Challenge",style: TextStyle(color: pinkColor))
      ],
      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.black))),
      Image.asset("$iconsAssets/search.png",scale: 4,)

      ],
      ),
      SizedBox(height: 8,),
      Stack(
      children: [
      Image.asset("$staticAssets/homeBg.png",),
      Positioned(
      left: 8,
      bottom: 12,
      child: Image.asset("$staticAssets/homeBgImg.png",scale: 5,)),
      Positioned(
      top: 12,
      left: 150,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      RichText(
      text:TextSpan(
      children: [
      TextSpan(text: "March"),
      TextSpan(text: " and \n",style: TextStyle(fontWeight: FontWeight.normal)),
      TextSpan(text: "clap"),
      TextSpan(text: " workout",style: TextStyle(fontWeight: FontWeight.normal)),
      ],
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white,))),
      SizedBox(height: 6,),
      Row(
      children: [
      Image.asset("$iconsAssets/graph.png",scale: 4,),
      Text(" 30 Days Challenge",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)
      ],
      ),
      Row(
      children: [
      Image.asset("$iconsAssets/timer.png",scale: 4,),
      Text(" 5 min",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)
      ],
      ),
      Container(
      height:24,
      width: 109,
      color: Color(0xffFA92AF),
      child: Center(child: Text("Ask Anything",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 12),)),
      )
      ],
      ),
      )
      ],
      ),
      SizedBox(height: 6,),
      Stack(children: [
      Container(
      height: 181,

      decoration:BoxDecoration(
      color: Color(0xffEFF3FF),
      boxShadow: [
      BoxShadow(
      color: Color(0xff98989826),
      blurRadius: 4,
      offset: Offset(-1, 2)
      )
      ]
      )


      ),

      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text("Steps",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
      Text("Goal = 4000 Steps",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),),
      Center(
      child: Stack(
      alignment: Alignment.center,
      children: [ Container(

      height: 104,
      width: 104,
      child: CircularProgressIndicator(
      value: 2333/4000,
      strokeWidth: 8,
      color: Colors.pink,
      backgroundColor: Color(0xffCDCDCD),
      ),

      ),
      Center(
      child: RichText(text: TextSpan(children: [
      TextSpan(
      text: "       2333 \n",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black)
      ),
      TextSpan(
      text: "           /4000 \n ",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Color(0xff9B9B9B))
      ),
      TextSpan(
      text: "   Total Steps",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xffF22A5B))
      )

      ])),
      )
      ]

      ),
      )
      ],
      ),

      ),
      ]
      ),
      SizedBox(height: 12,),
      Text("Barcode Scanner",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16, color: Color(0xff000000))),
      SizedBox(height: 12,),
      Row(
      children: [
      Container(
      height: 117,
      width: 127,
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Color(0xffEFF3FF),
      boxShadow: [
      BoxShadow(
      color: Color(0xff98989826),
      blurRadius: 4,
      offset: Offset(-1, 2),


      )
      ]
      ),
      child: Column(
      children: [
      SizedBox(height: 8,),
      Text("Scan Bar",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
      Text("Code ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
      SizedBox(height: 8,),
      Image.asset("$iconsAssets/scanBar.png",scale: 3,)
      ],
      ),
      ),
      SizedBox(width: 12,),
      Container(
      height: 117,
      width: 127,
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Color(0xffEFF3FF),
      boxShadow: [
      BoxShadow(
      color: Color(0xff98989826),
      blurRadius: 4,
      offset: Offset(-1, 2),


      )
      ]
      ),
      child: Column(
      children: [
      SizedBox(height: 8,),
      Text("Scan A",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
      Text("meal ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
      SizedBox(height: 8,),
      Image.asset("assets/icons_assets/meal.png",scale: 3,)
      ],
      ),
      )

      ],
      )
      ],
      ),


      ),
      ),
      );
      }
      }

