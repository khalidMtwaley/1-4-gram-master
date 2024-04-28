import 'package:flutter/material.dart';
import 'package:gram/presentation/Reservation/Result/No%20pupil%20detected.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../resource/styles_manager.dart';
import '../../../shared/component/component.dart';
class abnormal extends StatefulWidget {
  const abnormal({Key? key}) : super(key: key);

  @override
  State<abnormal> createState() => _abnormalState();
}

class _abnormalState extends State<abnormal> {
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
                    builder: (context) => no_detected()
                ),
              );
            },
          ),
        ),
        SizedBox(height: 200,),
        new CircularPercentIndicator(
          radius: 90.0,
          lineWidth: 5.0,
          percent: 0.6,
          center: new Text("60%",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.blue)),
          progressColor: Colors.red,
        ),
        SizedBox(height: 15,),
        Text("abnormal",style: TextStyle(fontSize: 40 ,color: Colors.red,)),
        SizedBox(height: 30,),
        Icon(Icons.refresh,size: 40,),
        Text("Get more information",style: TextStyle(color: Colors.blue),),
      ]),
    ),
    floatingActionButton: chatbot(context: context),

    );
  }
}
