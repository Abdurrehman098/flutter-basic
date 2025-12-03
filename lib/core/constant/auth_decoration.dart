

import 'package:flutter/material.dart';

const authInputDecoration = InputDecoration(

  // contentPadding: EdgeInsets.symmetric(
  //   horizontal: 20,
  //   vertical: 18
  // ),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(6),
  //
  //
  //
  // ),
  // focusedErrorBorder: OutlineInputBorder(
  //     borderSide: BorderSide(width: 3 , color: Colors.blue)
  //
  // ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 3 , color: Colors.blue)
  ),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: Colors.transparent)


  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),

  ),
  // errorBorder: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(Radius.circular(6)),
  //   borderSide: BorderSide(color: Colors.red , width: 2)
  // ),
  hoverColor: Colors.blue,
  fillColor: Color(0xFFEFF3FF),
  filled: true,
  hintText: "User Name",

);


