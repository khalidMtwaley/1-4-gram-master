import 'package:flutter/material.dart';
import 'package:gram/presentation/Payment/Payment.dart';
import 'package:gram/presentation/main_veiw/home/Home.dart';
import 'package:gram/presentation/main_veiw/profile/profile.dart';
import 'package:gram/resource/assets_manager.dart';
import '../../presentation/main_veiw/chatbot/chatBot0.dart';
import '../../presentation/terms/terms0.dart';
import '../../resource/styles_manager.dart';

Widget defaultButton({
  Color color = Colors.blue, // 0xff1895D2
  required Function function,
  required String text,
  double fontSize = 22,
  FontWeight fontWeight = FontWeight.w500,
  bool isUpperCase = false,
  Color textColor = Colors.white,
}) =>
    Container(
      width: double.infinity,
      height: 39,
      child: MaterialButton(
        onPressed: () => function(),
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
              color: textColor, fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(7),
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(7)),
        color: color,
      ),
    );
//---------------------------------------------------------------------------------------------------
Widget defaultAppBar() => Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
      child: Divider(
        height: 4,
        thickness: 4,
        color: Color(0xff1895D2),
      ),
    );
//---------------------------------------------------------------------------------------------------
Future showProfileSheet({
  var context,
}) =>
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff1895D2)),
                      ),
                      child: Icon(
                        Icons.home_outlined,
                        size: 25,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                      },
                      child: Text(
                        "Home",
                        style:
                            getRegularStyle(color: Colors.black, fontSize: 20),
                      )),
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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff1895D2)),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 25,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      child: Text(
                        "Account",
                        style:
                            getRegularStyle(color: Colors.black, fontSize: 20),
                      )),
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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                      },
                      child: Text(
                        "Payment",
                        style: getRegularStyle(
                            color: Colors.black, fontSize: 20),
                      )),
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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Icon(
                        Icons.messenger,
                        size: 25,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatBot0()));
                      },
                      child: Text(
                        "ChatBot",
                        style: getRegularStyle(
                            color: Colors.black, fontSize: 20),
                      )),
                ],
              ),

            ],
          ),
        );
      },
      elevation: 3,
      backgroundColor: Color(0xffE1E1E1E5),
    );
//---------------------------------------------------------------------------------------------------
 Widget chatbot({
   required var context,
})=> FloatingActionButton(
   onPressed: (){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatBot0()));
   },
   child: Image(image: AssetImage(ImageAssets.chatBot),height: 44,width: 49,),
   backgroundColor: Colors.white,
   elevation: 0,
 );
void showAlertDialog({required BuildContext context,required Color backgroundColor,required Widget content,List<Widget>? actions}){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: backgroundColor,
      elevation: 0,
      alignment: AlignmentDirectional.center,
      content: Padding(
          padding: EdgeInsets.symmetric(vertical: 1),
          child: content
      ),
      actions: actions,
    );
  });
}
OutlineInputBorder border = OutlineInputBorder(
    borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0));
