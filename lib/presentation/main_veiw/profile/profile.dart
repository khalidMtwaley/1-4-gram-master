import 'package:flutter/material.dart';
import 'package:gram/presentation/Payment/Payment.dart';
import 'package:gram/presentation/terms/terms0.dart';
import 'package:gram/resource/styles_manager.dart';
import 'package:gram/shared/component/component.dart';
import '../../../resource/assets_manager.dart';
import '../../reset_pass/Confirm_Pass.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  var fNameController = TextEditingController();
  var lNameController = TextEditingController();
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
            onPressed: (){
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
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Profile',
                      style: getBoldStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Image(
                      image: AssetImage(ImageAssets.avatar),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Edit",
                        style: getLightStyle(color: Colors.black, fontSize: 16),
                      )),
                  Text(
                    "John Smith",
                    style: getSemiBoldStyle(color: Colors.black),
                  ),
                  Text(
                    "@Johnsmith08",
                    style: getLightStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Icon(
                            Icons.person,
                            size: 25,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                showModalBottomSheet(context: context,builder: (context){
                                  return Container(
                                    height: 800,
                                    padding: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                      top: 10
                                    ),
                                    child:Form(
                                      key: formKey,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Account",style: getSemiBoldStyle(color: Colors.black),),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("First Name",style: getRegularStyle(color: Colors.black,fontSize: 16),),
                                                    Container(
                                                      height: 39,
                                                      decoration: BoxDecoration(
                                                          color: Color(0xffF0F1F3),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: TextFormField(
                                                        controller: fNameController,
                                                        keyboardType: TextInputType.name,
                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          hintText: "John",
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Last Name",style: getRegularStyle(color: Colors.black,fontSize: 16),),
                                                    Container(
                                                      height: 39,
                                                      decoration: BoxDecoration(
                                                          color: Color(0xffF0F1F3),
                                                          borderRadius: BorderRadius.circular(10)),
                                                      child: TextFormField(
                                                        controller: lNameController,
                                                        keyboardType: TextInputType.name,
                                                        decoration: InputDecoration(
                                                          border: InputBorder.none,
                                                          hintText: "Smith",
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "User name",
                                            style: getRegularStyle(color: Colors.black, fontSize: 16),
                                          ),
                                          Container(
                                            height: 39,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF0F1F3),
                                                borderRadius: BorderRadius.circular(8)),
                                            child: TextFormField(
                                              controller: userNameController,
                                              keyboardType: TextInputType.name,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "John Smith",
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Email",
                                            style: getRegularStyle(color: Colors.black, fontSize: 16),
                                          ),
                                          Container(
                                            height: 39,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF0F1F3),
                                                borderRadius: BorderRadius.circular(8)),
                                            child: TextFormField(
                                              controller: emailController,
                                              keyboardType: TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                  hintText: "Johnsmith08@gmail.com",
                                                  border: InputBorder.none),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Phone number",
                                            style: getRegularStyle(color: Colors.black, fontSize: 16),
                                          ),
                                          Container(
                                            height: 39,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF0F1F3),
                                                borderRadius: BorderRadius.circular(8)),
                                            child: TextFormField(
                                              controller: phoneController,
                                              keyboardType: TextInputType.phone,
                                              decoration: InputDecoration(
                                                  hintText: "01*******36",
                                                  border: InputBorder.none),
                                            ),
                                          ), // phone
                                          SizedBox(
                                            height: 20,
                                          ),
                                          defaultButton(function: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Confirmation()));
                                          }, text: "Change Password",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffF0F1F3),
                                            textColor: Colors.black

                                          )


                                        ],
                                      ),
                                    ),
                                  );
                                },
                                  elevation: 3
                                );
                              },
                              child: Text(
                                "Account",
                                style: getRegularStyle(
                                    color: Colors.black, fontSize: 20),
                              )),
                          Text(
                            "Manage and protect your account",
                            style:
                                getLightStyle(color: Colors.black, fontSize: 9),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.blue,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Icon(
                            Icons.privacy_tip,
                            size: 25,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Terms0()));
                              },
                              child: Text(
                                "Privacy and policy",
                                style: getRegularStyle(
                                    color: Colors.black, fontSize: 20),
                              )),
                          Text(
                            "Privacy and policy settings",
                            style:
                                getLightStyle(color: Colors.black, fontSize: 9),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.blue,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Icon(
                            Icons.credit_card,
                            size: 25,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Payment()));
                              },
                              child: Text(
                                "Payment",
                                style: getRegularStyle(
                                    color: Colors.black, fontSize: 20),
                              )),
                          Text(
                            "Payment information",
                            style:
                            getLightStyle(color: Colors.black, fontSize: 9),
                          ),
                        ],
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}