import 'package:flutter/material.dart';
import 'package:gram/presentation/reset_pass/verification_resetPass.dart';
import 'package:gram/resource/styles_manager.dart';
import 'package:gram/shared/component/component.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: defaultAppBar(),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
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
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Forgot password",
                          style: getBoldStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Your email address / mobile number",
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
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Invalid Email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Johnsmith08@gmail.com",
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: defaultButton(
                        function: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Verify_Password()));
                        },
                        text: "Send Code",
                        color: Color(0xff1895D2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
