

import 'package:flutter/material.dart';

class SignupScreenModel extends ChangeNotifier{
  final Globalloginkey = GlobalKey<FormState>();
  final Globalsignupkey = GlobalKey<FormState>();

  String? usernamevalidator (String? value) {
  if (value!.isEmpty || value == null) {
  return "please enter your Username";
  } else {
  return null;
  }
  }
  String? emailvalidator (String? value) {
    if (value!.isEmpty || value == null) {
      return "please enter your Username";
    } else {
      return null;
    }
  }


  String? passwordvalidator (String? value) {
    if (value!.isEmpty || value == null) {
      return "please enter your Username";
    }
    else if(value!.length<8){
      return "enter atleast 8 character";
    }
    else {
      return null;
    }
  }

  bool Login(){
    if(Globalloginkey.currentState!.validate()){
      return true;
    }
    return false;
  }
  bool Signup(){
    if(Globalsignupkey.currentState!.validate()){
      return true;
    }
    return false;
  }




}