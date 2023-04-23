import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:page_transition/page_transition.dart';
import 'package:palnt_doc/constants.dart';
import 'package:palnt_doc/ui/signIn_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                "Sign Up",
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
                  hintText: "Enter Full Name",
                  icon: Icons.person),
               const SizedBox(
                height: 10,
              ),
              const CostomTextfield(
                  obscureText: false,
                  hintText: "Enter Phone",
                  icon: Icons.phone_android),
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
                          child: const SignUp(),
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
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
        
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignIn(),
                          type: PageTransitionType.bottomToTop));                
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                      text: "Have an account?",
                      style: TextStyle(
                        color: Constants.blackColor,
                      ),
                    ),
                    TextSpan(
                      text: "Sign In",
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

