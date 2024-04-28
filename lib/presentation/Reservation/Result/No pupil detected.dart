import 'package:flutter/material.dart';
import 'package:gram/resource/assets_manager.dart';

import '../../../resource/styles_manager.dart';
import '../../../shared/component/component.dart';
import 'Failed to retrieve sensor.dart';
import 'failed2.dart';
class no_detected extends StatefulWidget {
  const no_detected({Key? key}) : super(key: key);

  @override
  State<no_detected> createState() => _no_detectedState();
}

class _no_detectedState extends State<no_detected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: defaultAppBar(),
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
        actions: [
          IconButton(
            onPressed: () {
              showProfileSheet(context: context);
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: Column(children: [
            Center(
              child: GestureDetector(
                child: Text("Access Denied",
                    style: getBoldStyle(color: Colors.black, fontSize: 24)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => failedRetrive()
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 150,),
            Image(image:AssetImage( ImageAssets.error)),
            SizedBox(height: 80,),
            Center(
              child: GestureDetector(
                child: Text("No pupil detected",style: TextStyle(fontSize: 40 ,color: Colors.blue,),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => failed2()
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30,),
            Icon(Icons.refresh,size: 40,),
            Text("Ask chatbot",),
          ]
          ),
        ),
      ),
      floatingActionButton: chatbot(context: context),

    );
  }
}
