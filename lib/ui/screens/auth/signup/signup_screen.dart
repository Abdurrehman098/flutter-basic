import 'package:fitness_app/core/constant/auth_decoration.dart';
import 'package:fitness_app/core/constant/colors.dart';
import 'package:fitness_app/core/constant/strings.dart';
import 'package:fitness_app/core/enums/enums.dart';
import 'package:fitness_app/ui/screens/auth/signup/signup_screen_model.dart';
import 'package:fitness_app/ui/screens/root/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  // final _Globalloginkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupScreenModel(),
      child : Consumer<SignupScreenModel>(builder: (context, model, child) =>
       DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/static_assets/signupBg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: 100, left: 10, right: 10),
                height: 430,
                width: 353,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: primary,
                        ),
                        child: Image.asset(
                          "$iconsAssets/logo.png",
                          scale: 4,
                        ),
                      ),
                      SizedBox(height: 2),
                      Container(
                        margin: EdgeInsets.only(left: 80, right: 80),
                        child: TabBar(
                          labelColor: pinkColor,
                          // indicator: UnderlineTabIndicator(
                          //   borderSide: BorderSide(width: 3 , color: pinkColor),
                          //   insets: EdgeInsets.symmetric(horizontal: 30)
                          // ),
                          unselectedLabelColor: Color(0xff909090),
                          indicatorColor: pinkColor,
                          indicatorWeight: 2,
                          // indicatorPadding: EdgeInsets.only(left:   ,right: 10),
                          indicatorSize: TabBarIndicatorSize.tab,

                          tabs: [
                            Tab(text: "Login"),
                            Tab(text: "Signup"),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Form(
                              key: model.Globalloginkey,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextFormField(
                                      validator: model.usernamevalidator,

                                      // validator: (value) {
                                      //   if (value!.isEmpty || value == null) {
                                      //     return "please enter your Username";
                                      //   } else {
                                      //     return null;
                                      //   }
                                      // },

                                      decoration: authInputDecoration,
                                    ),
                                    SizedBox(height: 10,),
                                
                                    TextFormField(


                                      validator: model.passwordvalidator,

                                      // validator: (value) {
                                      //   if (value!.isEmpty || value == null) {
                                      //     return "please enter your password";
                                      //   } else if (value.length <= 7) {
                                      //     return "your password should be atleast 8 character";
                                      //   } else {
                                      //     return null;
                                      //   }
                                      // },
                                      decoration: authInputDecoration.copyWith(
                                        hintText: "Password",
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "forgot Password?",
                                          style: TextStyle(color: pinkColor),
                                        ),
                                      ),
                                    ),
                                
                                    InkWell(
                                      onTap: () async{
                                        // if (_Globalloginkey.currentState!
                                        //     .validate()) {
                                
                                
                                        if(model.Login())
                                
                                          {
                                            model.setState(ViewState.busy);
                                            await Future.delayed(Duration(seconds: 5));
                                            Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => RootScreen(),
                                            ),
                                          );
                                            model.setState(ViewState.idle);
                                        }
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 297,
                                        height: 42,
                                        decoration: BoxDecoration(
                                          gradient: primary,
                                        ),
                                        child:model.state==ViewState.busy ? CircularProgressIndicator():
                                        Text(
                                          "login",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Don't have an account? "),
                                          TextButton(
                                            onPressed: () {
                                              // Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),),);
                                            },
                                            child: Text(
                                              "Signup",
                                              style: TextStyle(color: pinkColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Form(
                              key: model.Globalsignupkey,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 297,
                                        height: 42,
                                
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: whiteColor,
                                              blurRadius: 8,
                                              spreadRadius: 0,
                                              offset: Offset(-2, 4),
                                            ),
                                          ],
                                        ),
                                        child: TextFormField(
                                
                                          validator: model.usernamevalidator,
                                
                                          // validator: (value){
                                          //   if(value!.isEmpty || value == null){
                                          //     return "please enter your username";
                                          //   }
                                          //   else{
                                          //     return null;
                                          //   }
                                          // },
                                          decoration: authInputDecoration,
                                        ),
                                      ),
                                    ),
                                
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        width: 297,
                                        height: 42,
                                
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: whiteColor,
                                              blurRadius: 8,
                                              spreadRadius: 0,
                                              offset: Offset(-2, 4),
                                            ),
                                          ],
                                        ),
                                        child: TextFormField(
                                
                                          validator: model.emailvalidator,
                                
                                
                                          // validator: (value ){
                                          //   if(value!.isEmpty || value == null ){
                                          //     return " please enter your email" ;
                                          //   }
                                          //   else{
                                          //     return null ;
                                          //   }
                                          // },
                                          decoration: authInputDecoration.copyWith(
                                            hintText: "Email",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        width: 297,
                                        height: 42,
                                
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 0,
                                              spreadRadius: 0,
                                              offset: Offset(-2, 4),
                                            ),
                                          ],
                                        ),
                                        child: TextFormField(
                                          validator: model.passwordvalidator,
                                
                                
                                          // validator: (value){
                                          //   if(value!.isEmpty || value==null){
                                          //     return "please enter your password";
                                          //
                                          //   }
                                          //   else if (value!.length <= 7){
                                          //     return "enter atleast 8 character";
                                          //   }
                                          //   else{
                                          //     return null;
                                          //   }
                                          // },
                                          decoration: authInputDecoration.copyWith(
                                            hintText: "Password",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                
                                    InkWell(
                                      onTap:()async{
                                
                                        if(model.Signup())
                                
                                        {
                                          model.setState(ViewState.busy);
                                          await Future.delayed(Duration(seconds: 5));
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                                        model.setState(ViewState.idle);
                                        }
                                
                                
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 297,
                                        height: 42,
                                        decoration: BoxDecoration(gradient: primary),
                                
                                          child:model.state==ViewState.busy ? CircularProgressIndicator():
                                          Text(
                                            "Signup",
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                
                                      ),
                                    ),
                                
                                
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Already have an account? "),
                                          TextButton(
                                            onPressed: () {
                                              // Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                                            },
                                            child: Text(
                                              "Login",
                                              style: TextStyle(color: pinkColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
          ),
        ),
      ),
      ),
    );
  }
}

//
// class login extends StatefulWidget {
//   const login({super.key});
//
//   @override
//   State<login> createState() => _loginState();
// }
//
// class _loginState extends State<login> {
//   final _Globalloginkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _Globalloginkey,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 width: 297,
//                 height: 42,
//
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0xff98989840),
//                       blurRadius: 8,
//                       spreadRadius: 0,
//                       offset: Offset(-2, 4),
//                     ),
//                   ],
//                 ),
//                 child: TextFormField(
//                   validator: (value) {
//                     if (value!.isEmpty || value == null) {
//                       return "please enter your Username";
//                     } else {
//                       return null;
//                     }
//                   },
//
//                   decoration: authInputDecoration,
//                 ),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                 width: 297,
//                 height: 42,
//
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0xff98989840),
//                       blurRadius: 8,
//                       spreadRadius: 0,
//                       offset: Offset(-2, 4),
//                     ),
//                   ],
//                 ),
//                 child: TextFormField(
//                   validator: (value) {
//                     if (value!.isEmpty || value == null) {
//                       return "please enter your password";
//                     } else if (value.length <= 7) {
//                       return "your password should be atleast 8 character";
//                     } else {
//                       return null;
//                     }
//                   },
//                   decoration: authInputDecoration.copyWith(
//                     hintText: "Password",
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.topRight,
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "forgot Password?",
//                   style: TextStyle(color: pinkColor),
//                 ),
//               ),
//             ),
//
//             InkWell(
//               onTap: () {
//                 if (_Globalloginkey.currentState!.validate()) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => RootScreen()),
//                   );
//                 }
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 width: 297,
//                 height: 42,
//                 decoration: BoxDecoration(gradient: primary),
//                 child: Text(
//                   "login",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: whiteColor,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Don't have an account? "),
//                   TextButton(
//                     onPressed: () {
//                       // Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),),);
//                     },
//                     child: Text("Signup", style: TextStyle(color: pinkColor)),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class signup extends StatefulWidget {
//   const signup({super.key});
//
//   @override
//   State<signup> createState() => _signupState();
// }
//
// class _signupState extends State<signup> {
//   final _Globalsignupkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _Globalsignupkey,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 width: 297,
//                 height: 42,
//
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0xff98989840),
//                       blurRadius: 8,
//                       spreadRadius: 0,
//                       offset: Offset(-2, 4),
//                     ),
//                   ],
//                 ),
//                 child: TextFormField(decoration: authInputDecoration),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                 width: 297,
//                 height: 42,
//
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0xff98989840),
//                       blurRadius: 8,
//                       spreadRadius: 0,
//                       offset: Offset(-2, 4),
//                     ),
//                   ],
//                 ),
//                 child: TextFormField(
//                   decoration: authInputDecoration.copyWith(hintText: "Email"),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                 width: 297,
//                 height: 42,
//
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0xff98989840),
//                       blurRadius: 8,
//                       spreadRadius: 0,
//                       offset: Offset(-2, 4),
//                     ),
//                   ],
//                 ),
//                 child: TextFormField(
//                   decoration: authInputDecoration.copyWith(
//                     hintText: "Password",
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 8),
//
//             Container(
//               width: 297,
//               height: 42,
//               decoration: BoxDecoration(gradient: primary),
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Signup",
//                   style: TextStyle(
//                     color: whiteColor,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("Already have an account? "),
//                   TextButton(
//                     onPressed: () {
//                       // Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
//                     },
//                     child: Text("Login", style: TextStyle(color: pinkColor)),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
