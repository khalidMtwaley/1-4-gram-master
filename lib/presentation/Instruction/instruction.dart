import 'package:flutter/material.dart';
import 'package:gram/presentation/Reservation/Result/Failed%20to%20retrieve%20sensor.dart';
import 'package:gram/presentation/Reservation/Result/normal.dart';
import 'package:gram/resource/assets_manager.dart';
import 'package:gram/shared/component/component.dart';
import 'package:image_picker/image_picker.dart';

import '../../resource/styles_manager.dart';

class Instruction extends StatefulWidget {
  const Instruction({Key? key}) : super(key: key);

  @override
  State<Instruction> createState() => _InstructionState();
}

class _InstructionState extends State<Instruction> {
  final ImagePicker _picker = ImagePicker();
  PickedFile? _imageFile;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: defaultAppBar(),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          children: [
            Center(
              child: Text(
                'instructions',
                style: getBoldStyle(color: Colors.black,fontSize: 25),

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image(
                image: AssetImage(ImageAssets.instructions),
                height:size.height/5 ,
                width: size.width/2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 13.75,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all()),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Keep adjusting the camera for\naround 15 cm.",
                  style: getRegularStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 13.75,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all()),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Use a light of the intensity\nof 100 cd/m2.",
                  style: getRegularStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 13.75,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all()),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Center your eyes then tap\nresult to get your result.",
                  style: getRegularStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40,left: 20,right: 20),
              child: defaultButton(function: (){
                takePhoto(ImageSource.camera);
              }, text: "open the camera",isUpperCase: false,color: Color(0xff1895D2)),
            )
          ],
        ),
      ),
    );
  }
  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile!;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => normal()
      ),
    );
  }
}
