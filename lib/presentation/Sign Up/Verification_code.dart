import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gram/presentation/Payment/Payment.dart';
import 'package:gram/presentation/main_veiw/profile/profile.dart';
import 'package:gram/shared/component/component.dart';

import '../../resource/styles_manager.dart';

class verificationOtp extends StatefulWidget {
  const verificationOtp({Key? key}) : super(key: key);

  @override
  State<verificationOtp> createState() => _verificationOtpState();
}

class _verificationOtpState extends State<verificationOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: defaultAppBar(),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
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
            padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Center(
                          child: Text("Type the code",
                              style:
                                  getBoldStyle(color: Colors.black, fontSize: 24)),
                        ), // tittle
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                            child: Text(
                          "A confirmation code has been sent to\n your cell phone , please check it and\n enter it here",
                          style: getRegularStyle(color: Colors.black, fontSize: 20),
                        )), // subtittle
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 67,
                                height: 61,
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textAlign: TextAlign.center,
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                      if (value.isEmpty) {
                                        FocusScope.of(context).previousFocus();
                                      }
                                    }),
                              ),
                              SizedBox(
                                width: 67,
                                height: 61,
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textAlign: TextAlign.center,
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                      if (value.isEmpty) {
                                        FocusScope.of(context).previousFocus();
                                      }
                                    }),
                              ),
                              SizedBox(
                                width: 67,
                                height: 61,
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textAlign: TextAlign.center,
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                      if (value.isEmpty) {
                                        FocusScope.of(context).previousFocus();
                                      }
                                    }),
                              ),
                              SizedBox(
                                width: 67,
                                height: 61,
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    textAlign: TextAlign.center,
                                    onChanged: (value) {
                                      if (value.isEmpty) {
                                        FocusScope.of(context).previousFocus();
                                      }
                                    }),
                              ),
                            ],
                          ),
                        ), // Row from field
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 27,
                            ),
                            backgroundColor: Color(0xff1895D2),
                          ),
                        ), // floating button
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: TextButton(
                            onPressed: (){},
                            child: Text("Please resend the code.",
                            style: getLightStyle(color: Color(0xff1895D2), fontSize: 17),)
                          ),
                        ),  // text resend
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
//

// default button submit
