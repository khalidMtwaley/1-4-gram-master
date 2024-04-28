import 'package:flutter/material.dart';
import 'package:gram/presentation/Employee/employee.dart';
import 'package:gram/resource/assets_manager.dart';
import 'package:image_picker/image_picker.dart';

import '../../resource/styles_manager.dart';
import '../../shared/component/component.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {



  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Employee list',
                  style: getBoldStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Employee()));
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF9F7F7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image(
                          image: AssetImage(ImageAssets.man),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Smith",
                              style: getMediumStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Pr manager",
                              style: getLightStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF9F7F7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image(
                          image: AssetImage(ImageAssets.woman),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ahmed Ali",
                              style: getMediumStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "IT engineer",
                              style: getLightStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF9F7F7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image(
                          image: AssetImage(ImageAssets.man),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Aya Yasser",
                              style: getMediumStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Hr manager",
                              style: getLightStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF9F7F7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image(
                          image: AssetImage(ImageAssets.man),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yousef fahmy",
                              style: getMediumStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Accounts officer",
                              style: getLightStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF9F7F7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image(
                          image: AssetImage(ImageAssets.man),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mira gamal",
                              style: getMediumStyle(
                                  color: Colors.black, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Secretary",
                              style: getLightStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: chatbot(context: context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }

  // افتكر تشيلها لما نبقا نربط ونخلي دي ف الصفحة اللي بعدها


}
