// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:palnt_doc/ui/signUp_page.dart';

import '../constants.dart';
import 'forgot_password.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/plant-doctor.png", height: 200, width: 200,),
              const Text(
                "Sign-In",
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 30,
              ),
              const CostomTextfield(
                  obscureText: false,
                  hintText: "Enter Email",
                  icon: Icons.alternate_email),
              const SizedBox(
                height: 10,
              ),
              const CostomTextfield(
                  obscureText: true,
                  hintText: "Enter Password",
                  icon: Icons.lock),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignIn(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Center(
                    child: Text(
                      "Sign-In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const ForgotPassword(),
                          type: PageTransitionType.bottomToTop));                
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                      text: "Forgort Password?",
                      style: TextStyle(
                        color: Constants.blackColor,
                      ),
                    ),
                    TextSpan(
                      text: "Reset Here",
                      style: TextStyle(
                        color: Constants.primaryColor,
                      )
                    )
                    ])
                  ),
                ),
              ),
              const SizedBox(height: 20,),
        
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignUp(),
                          type: PageTransitionType.bottomToTop));                
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                      text: "New to plant doctor?",
                      style: TextStyle(
                        color: Constants.blackColor,
                      ),
                    ),
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        color: Constants.primaryColor,
                      )
                    )
                    ])
                  ),
                ),
              ),
              // Row(
              //   children: const [
              //     Expanded(child: Divider()),
              //     Padding(padding: const EdgeInsets.symmetric(horizontal: 10), child: Text("OR"),),                
              //     Expanded(child: Divider())
              //   ]
              // )
              
            ],
          ),
        ),
      ),
    );
  }
}

class CostomTextfield extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;

  const CostomTextfield({
    Key? key,
    required this.icon,
    required this.obscureText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,

      child: TextField(
        
         
        obscureText: obscureText,
        style: TextStyle(
          color: Constants.blackColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[250],
          // contentPadding: EdgeInsets,
          enabledBorder:  OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            borderRadius: BorderRadius.circular(15),
            gapPadding: 40
            // double get gapPadding = 5.0;
          ), 
          prefixIcon: Icon(
            icon,
            color: Constants.blackColor.withOpacity(0.3),
          ),
          hintText: hintText,
        ),
        cursorColor: Constants.blackColor.withOpacity(0.5),
      ),
    );
    const SizedBox(height: 50,);
  }
}
