import 'package:flutter/material.dart';
import 'package:gram/presentation/Sign%20Up/sign_up.dart';
import 'package:gram/presentation/onboarding/onboarding.dart';
import 'package:gram/presentation/terms/terms.dart';
import 'package:gram/resource/styles_manager.dart';

import '../../resource/assets_manager.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
            () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => onboarding())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(ImageAssets.splashLogo1),
                width: 231,
                height: 214,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "1/4 gram",
                style: getBoldStyle(color: Color(0xff1895D2), fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
