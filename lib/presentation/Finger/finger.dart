import 'package:flutter/material.dart';
import 'package:gram/presentation/Instruction/instruction.dart';
import 'package:gram/resource/assets_manager.dart';
import 'package:gram/resource/styles_manager.dart';
import 'package:gram/shared/component/component.dart';

class Finger extends StatefulWidget {
  const Finger({Key? key}) : super(key: key);

  @override
  State<Finger> createState() => _FingerState();
}

class _FingerState extends State<Finger> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: defaultAppBar(),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
        padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
        child: Column(
          children: [
            Center(
              child: Image(
                image: AssetImage(ImageAssets.hand),
                width: size.width/2,
                height: size.height/4,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Icon(
              Icons.info_rounded,
              color: Colors.red,
              size: 33,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Put your hand\non the blue area",
              style: getSemiBoldStyle(color: Colors.black,),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 40,left: 20,right: 20
              ),
              child: defaultButton(function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Instruction(),));
              },
                text: "Done",
                fontSize: 22,
                color:Color(0xff1895D2) ,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
