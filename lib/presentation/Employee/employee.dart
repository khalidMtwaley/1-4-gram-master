import 'package:flutter/material.dart';
import 'package:gram/presentation/Finger/finger2.dart';
import 'package:gram/shared/component/component.dart';
import 'package:image_picker/image_picker.dart';

import '../../resource/assets_manager.dart';
import '../../resource/styles_manager.dart';

class Employee extends StatefulWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
        child: Column(
          children: [
            Center(
              child: Text(
                'Employee information',
                style: getBoldStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
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
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
               border: Border.all(color: Color(0xff1895D2)),
               borderRadius:  BorderRadius.circular(20)
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Name : ',style: getRegularStyle(color: Colors.black,fontSize: 15),),
                      SizedBox(
                        width: 15,
                      ),
                      Text('John Smith',style: getRegularStyle(color: Colors.black,fontSize: 15),)

                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff1895D2),

                    ),
                  ),
                  //-----------------------------name-----
                  Row(
                    children: [
                      Text('Age : ',style: getRegularStyle(color: Colors.black,fontSize: 15),),
                      SizedBox(
                        width: 15,
                      ),
                      Text('40',style: getRegularStyle(color: Colors.black,fontSize: 15),)

                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff1895D2),

                    ),
                  ),
                  //------------------------------Age-----
                  Row(
                    children: [
                      Text('Gender : ',style: getRegularStyle(color: Colors.black,fontSize: 15),),
                      SizedBox(
                        width: 15,
                      ),
                      Text('male',style: getRegularStyle(color: Colors.black,fontSize: 15),)

                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff1895D2),

                    ),
                  ),
                  //-------------------------gender--
                  Row(
                    children: [
                      Text('Employee id : ',style: getRegularStyle(color: Colors.black,fontSize: 15),),
                      SizedBox(
                        width: 15,
                      ),
                      Text('2009453',style: getRegularStyle(color: Colors.black,fontSize: 15),)

                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff1895D2),

                    ),
                  ),
                  //-------------------------employee id----
                  Row(
                    children: [
                      Text('National id : ',style: getRegularStyle(color: Colors.black,fontSize: 15),),
                      SizedBox(
                        width: 15,
                      ),
                      Text('1000166478',style: getRegularStyle(color: Colors.black,fontSize: 15),)

                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff1895D2),

                    ),
                  ),
                  //-------------------------National id--------
                  Row(
                    children: [
                      Text('Chronic disease : ',style: getRegularStyle(color: Colors.black,fontSize: 15),),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Blood pressure / Diabetes',style: getRegularStyle(color: Colors.black,fontSize: 15),)

                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff1895D2),

                    ),
                  ),
                  //------------------------Chronic disease---------
                  Row(
                    children: [
                      Text('Department : ',style: getRegularStyle(color: Colors.black,fontSize: 15),),
                      SizedBox(
                        width: 15,
                      ),
                      Text('John Smith',style: getRegularStyle(color: Colors.black,fontSize: 15),)

                    ],
                  ),
                  //--------------------------Department-------
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding:
              const EdgeInsets.only(left: 15,right: 15, bottom: 50,),
              child: defaultButton(
                  function: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Finger2()));
                  },
                  text: "Done",
                  color: Color(0xff1895D2)),
            ),
          ],
        ),
      ),
    );
  }
}
