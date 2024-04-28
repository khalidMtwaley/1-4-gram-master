import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../resource/styles_manager.dart';
import '../../../shared/component/component.dart';
import 'abnormal.dart';
class normal extends StatefulWidget {
  const normal({Key? key}) : super(key: key);

  @override
  State<normal> createState() => _normalState();
}

class _normalState extends State<normal> {
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
        child: Column(children: [
          Center(
            child: GestureDetector(
              child: Text("Your result",
                  style: getBoldStyle(color: Colors.black, fontSize: 24)),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => abnormal()
                  ),
                );
              },
            ),),
              SizedBox(height: 200,),
              new CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 5,
                percent: 0.2,
                center: new Text("20%",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.blue),),
                progressColor: Colors.blue,
              ),
          SizedBox(height: 15,),
          Text("normal",style: TextStyle(fontSize: 40 ,color: Colors.blue,)),
          SizedBox(height: 30,),
          Icon(Icons.refresh,size: 40,),
          Text("Get more information",style: TextStyle(color: Colors.blue)),

        ]),
      ),
      floatingActionButton: chatbot(context: context),

    );
  }
}
