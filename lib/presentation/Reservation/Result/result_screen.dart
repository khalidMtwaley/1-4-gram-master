import 'package:flutter/material.dart';

import '../../../resource/styles_manager.dart';
import '../../../shared/component/component.dart';

class result_screen extends StatefulWidget {
  const result_screen({Key? key}) : super(key: key);

  @override
  State<result_screen> createState() => _result_screenState();
}

class _result_screenState extends State<result_screen> {
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
              child: Text("Your result",
                  style: getBoldStyle(color: Colors.black, fontSize: 24)),
            ),
          ]),
        ),
      floatingActionButton: chatbot(context: context),

    );
  }
}
