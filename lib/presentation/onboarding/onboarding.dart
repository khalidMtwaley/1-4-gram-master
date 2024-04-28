import 'package:flutter/material.dart';
import 'package:gram/presentation/Sign%20Up/sign_up0.dart';
import 'package:gram/presentation/login/login_screen.dart';
import 'package:gram/resource/assets_manager.dart';
import 'package:gram/shared/component/component.dart';

import '../../resource/styles_manager.dart';
import '../terms/terms.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  PageController nextPage = PageController();
  int pageNumber = 0;

  Widget dotview() {
    return Builder(builder: ((context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 2; i++)
            Container(
              width: i == pageNumber ? 25 : 6,
              height: 6,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: i == pageNumber ? Color(0xff1895D2) : Colors.grey,
              ),
            )
        ],
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: PageView(
            onPageChanged: (value) {
              setState(() {
                pageNumber = value;
              });
            },
            controller: nextPage,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image(
                      image: AssetImage(ImageAssets.onboardingImage1),
                      height: screenSize.height,
                      width: screenSize.width,
                      fit: BoxFit.fitWidth,
                    ),
                    Image(
                      image: AssetImage(
                        ImageAssets.onboardingImage2,
                      ),
                      fit: BoxFit.fitWidth,
                      width: screenSize.width,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Welcome",
                            style: getBoldStyle(
                                color: Colors.black, fontSize: 30)),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Your gate for drug detection world",
                          style: getRegularStyle(
                              color: Colors.black, fontSize: 22),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        dotview(),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          "THANK YOU ..\n for downloading 1/4 gram",
                          style: getRegularStyle(
                            color: Color(0xff1895D2),
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Image(
                          image: AssetImage(ImageAssets.splashLogo1),
                          height: 117,
                          width: 126,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image(
                      image: AssetImage(ImageAssets.onboardingImage1),
                      height: screenSize.height,
                      width: screenSize.width,
                      fit: BoxFit.fitWidth,
                    ),
                    Image(
                      image: AssetImage(
                        ImageAssets.onboardingImage2,
                      ),
                      fit: BoxFit.fitWidth,
                      width: screenSize.width,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "By creating an account , you consent to\n the data collected about you by 1/4 gram\n for the research purposes specified in",
                          style: getRegularStyle(
                              color: Colors.black, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Terms()));
                            },
                            child: Text(
                              "Our Terms",
                              style: getRegularStyle(
                                  color: Color(0xff1895D2), fontSize: 22),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        dotview(),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "THANK YOU ..\n for downloading 1/4 gram",
                          style: getRegularStyle(
                            color: Color(0xff1895D2),
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Image(
                          image: AssetImage(ImageAssets.splashLogo1),
                          height: 117,
                          width: 126,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 20, bottom: 10),
                          child: defaultButton(
                              function: () {
                                showDialog(context: context, builder: (BuildContext context) { return AlertDialog(
                                  backgroundColor: Colors.white,
                                  title: Column(
                                    children: [
                                      Center(child: Icon(Icons.info,color: Colors.red,)),
                                      Divider(
                                        thickness: 1,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                  alignment: Alignment.center,

                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("To create an account successfully\nplease check out our terms",style: getMediumStyle(color: Colors.black,fontSize: 16),textAlign: TextAlign.center,),
                                      TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Terms()));},
                                          child:Text("Our Terms",style: getRegularStyle(color: Color(0xff1895D2),fontSize: 21),) )
                                    ],
                                  ),
                                ); });

                              },
                              text: "Create an account",
                              color: Color(0xff1895D2),
                              isUpperCase: false),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: defaultButton(
                              function: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => loginScreen()));
                              },
                              text: "Sign in",
                              color: Color(0xff1895D2),
                              isUpperCase: false),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
