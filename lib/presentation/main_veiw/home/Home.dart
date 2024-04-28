import 'package:flutter/material.dart';
import 'package:gram/presentation/employeList/employee_list.dart';
import 'package:gram/resource/assets_manager.dart';
import 'package:gram/resource/styles_manager.dart';
import 'package:gram/shared/component/component.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          padding: const EdgeInsets.only(left: 20, right: 20,),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Home',
                  style: getBoldStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Image(
                  image: AssetImage(ImageAssets.home),
                  height: size.height / 3,
                  width: size.width,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                child: defaultButton(
                    function: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeeList()));
                    },
                    text: "Employee list",
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff1895D2)),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all()),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    " Highly Recommended ",
                    style: getRegularStyle(color: Colors.black, fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Container(
                      height: size.height / 3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Image(
                              image: AssetImage(ImageAssets.hos1),
                            ),
                            Container(
                              height: 44,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(color: Color(0x00000082)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all()),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Dar el shefa’a",
                                        style: getRegularStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Cairo",
                                    style: getLightStyle(
                                        color: Colors.white, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: size.width/9,
                    ),
                    Container(
                      height: size.height / 3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Image(
                              image: AssetImage(ImageAssets.hos2),
                            ),
                            Container(
                              height: 44,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(color: Color(0x00000082)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all()),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "SKY",
                                        style: getRegularStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Isma’alia",
                                    style: getLightStyle(
                                        color: Colors.white, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
