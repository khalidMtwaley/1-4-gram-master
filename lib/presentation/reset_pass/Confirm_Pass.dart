import 'package:flutter/material.dart';
import 'package:gram/resource/styles_manager.dart';
import 'package:gram/shared/component/component.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  var newPasswordController = TextEditingController();
  var confirmController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: defaultAppBar(),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
          child: SingleChildScrollView( 
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Change password",
                            style: getBoldStyle(color: Colors.black, fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "new password",
                          style: getRegularStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 39,
                          decoration: BoxDecoration(
                              color: Color(0xffF0F1F3),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            controller: newPasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "This field must not be empty";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "********", border: InputBorder.none),
                          ),
                        ), //password
                        SizedBox(
                          height: 20,
                        ),
                        //----------------------------------
                        Text(
                          "confirm new password",
                          style: getRegularStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 39,
                          decoration: BoxDecoration(
                              color: Color(0xffF0F1F3),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            controller: confirmController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "This field must not be empty";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "********", border: InputBorder.none),
                          ),
                        ), //confirm password
                        SizedBox(
                          height: 40,
                        ),
                        //----------------------------------
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only( top: 40),
                      child: defaultButton(
                        function: () {
                          Navigator.pop(context);
                        },
                        text: "Next",
                        color: Color(0xff1895D2),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
