

import 'package:flutter/material.dart';

const authInputDecoration = InputDecoration(
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(6),
  //
  //
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
  hoverColor: Colors.blue,
  fillColor: Color(0xFFEFF3FF),
  filled: true,
  hintText: "User Name",

);


