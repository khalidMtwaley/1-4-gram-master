import 'package:flutter/material.dart';
import 'package:gram/presentation/Finger/finger.dart';
import 'package:gram/presentation/main_veiw/profile/profile.dart';

import '../../resource/styles_manager.dart';
import '../../shared/component/component.dart';


class SampleInformation extends StatefulWidget {
  const SampleInformation({Key? key}) : super(key: key);

  @override
  State<SampleInformation> createState() => _SampleInformationState();
}

class _SampleInformationState extends State<SampleInformation> {
  var selctedGender;
  var selectedAge;
  List<int> numbers = List.generate(63, (index) => index + 18);


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
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text("Sample information",
                  style: getBoldStyle(
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "please fill in the details below so that \n we can get  out an accurate result",
                style: getLightStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Gender",
              style: getRegularStyle(color: Colors.black, fontSize: 17),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Color(0xffF0F1F3),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5
                ),
                child: DropdownButtonFormField(
                  dropdownColor: Color(0xffF0F1F3),
                  items: ["Male", "Female"]
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selctedGender = val;
                    });
                  },
                  value: selctedGender,
                  hint: Text("Your Gender"),
                  decoration: InputDecoration(
                    border:InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Age",
              style: getRegularStyle(color: Colors.black, fontSize: 17),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Color(0xffF0F1F3),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5
                ),
                child: DropdownButtonFormField(
                  items: numbers
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedAge = value;
                    });
                  },
                  value: selectedAge,
                  dropdownColor: Color(0xffF0F1F3),
                  hint: Text("Your Age"),
                  decoration: InputDecoration(
                    border:InputBorder.none,

                  ),


                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 50 ),
              child: defaultButton(function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Finger()));
              }, text: "Next",color: Color(0xff1895D2),),
            ),
          ],
        ),
      ),
      floatingActionButton: chatbot(context: context),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}
