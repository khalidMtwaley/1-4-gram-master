import 'package:flutter/material.dart';
import 'package:gram/SampleInformation/sample_information.dart';
import 'package:gram/resource/assets_manager.dart';

import '../../resource/styles_manager.dart';
import '../../shared/component/component.dart';

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: defaultAppBar(),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              showProfileSheet(context: context);
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Follow these steps to get your result",
                    style: getRegularStyle(color: Colors.black, fontSize: 20)),
              ),
              SizedBox(
                height: 35,
              ),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image(
                    image: AssetImage(ImageAssets.inst2),
                    height: size.height / 2,
                    width: size.width,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.radio_button_checked,
                            color: Color(0xff1895D2),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Insert your information",
                              style: getRegularStyle(
                                  color: Colors.black, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.radio_button_checked,
                            color: Color(0xff1895D2),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              "Use the sensor to extract your\nbiometric information",
                              style: getRegularStyle(
                                  color: Colors.black, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.radio_button_checked,
                            color: Color(0xff1895D2),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Use the camera to scan your eye..",
                            style: getRegularStyle(
                                color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 40),
                child: defaultButton(function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SampleInformation()));
                }, text: "Next", color: Color(0xff1895D2),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
