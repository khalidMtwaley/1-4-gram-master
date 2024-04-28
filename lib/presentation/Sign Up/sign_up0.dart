import 'package:flutter/material.dart';
import 'package:gram/SampleInformation/sample_information.dart';
import 'package:gram/presentation/Sign%20Up/sign_up.dart';
import 'package:gram/presentation/Steps/steps.dart';
import 'package:gram/presentation/login/login_screen.dart';
import 'package:gram/resource/assets_manager.dart';
import 'package:gram/resource/styles_manager.dart';
import 'package:gram/shared/component/component.dart';

class Signup0 extends StatefulWidget {
  const Signup0({Key? key}) : super(key: key);

  @override
  State<Signup0> createState() => _Signup0State();
}

class _Signup0State extends State<Signup0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 21, right: 21, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(ImageAssets.splashLogo1),
                height: 169,
                width: 182,
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Sign up",
                style: getBoldStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "1/4 gram...drug detection world",
                style: getRegularStyle(color: Colors.black, fontSize: 12),
              ),
              SizedBox(
                height: 30,
              ),
              defaultButton(
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Steps(),
                        ));
                  },
                  text: "Continue as an guest",
                  textColor: Colors.white,
                  fontSize: 22,
                  isUpperCase: false,
                  color: Color(0xff1895D2),
                  fontWeight: FontWeight.w400),
              SizedBox(
                height: 25,
              ),
              defaultButton(
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ));
                  },
                  text: "Continue as an association",
                  textColor: Colors.white,
                  fontSize: 22,
                  isUpperCase: false,
                  color: Color(0xff1895D2),
                  fontWeight: FontWeight.w400),

              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Have An Account?",
                      style: getRegularStyle(color: Colors.black, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginScreen()));
                        },
                        child: Text(
                          "Click To Sign In",
                          style: getRegularStyle(
                              color: Color(0xff1895D2), fontSize: 16),
                        ))
                  ],
                ),
              ) // have account
            ],
          ),
        ),
      ),
    );
  }
}
