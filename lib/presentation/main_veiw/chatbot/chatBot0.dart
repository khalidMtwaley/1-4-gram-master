import 'package:flutter/material.dart';
import 'package:gram/resource/assets_manager.dart';

import '../../../resource/styles_manager.dart';
import '../../../shared/component/component.dart';

class ChatBot0 extends StatefulWidget {
  const ChatBot0({Key? key}) : super(key: key);

  @override
  State<ChatBot0> createState() => _ChatBot0State();
}

class _ChatBot0State extends State<ChatBot0> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: defaultAppBar(),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showProfileSheet(context: context);
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Your AI Assistant",
                  style: getBoldStyle(color: Colors.black, fontSize: 24)),
              SizedBox(
                height: 30,
              ),
              Text(
                "Using this software, you can ask your questions and receive answer using artificial intellgence assistant",
                style: getLightStyle(color: Colors.black, fontSize: 17.12),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Image(
                image: AssetImage(ImageAssets.ai),
                height: size.height / 2,
                width: size.width,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 40,left: 10,right: 10
                ),
                child: defaultButton(function: (){
                },
                  text: "Continue",
                  fontSize: 22,
                  color:Color(0xff1895D2) ,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
