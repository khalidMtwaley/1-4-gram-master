import 'package:flutter/material.dart';
import 'package:gram/presentation/Sign%20Up/sign_up.dart';
import 'package:gram/presentation/Sign%20Up/sign_up0.dart';
import 'package:gram/resource/assets_manager.dart';
import 'package:gram/resource/styles_manager.dart';
import 'package:gram/shared/component/component.dart';

class Terms0 extends StatefulWidget {
  const Terms0({Key? key}) : super(key: key);

  @override
  State<Terms0> createState() => _Terms0State();
}

class _Terms0State extends State<Terms0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                    image: AssetImage(ImageAssets.splashLogo1),
                    height: 117,
                    width: 126,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Terms and conditions",
                    style:
                    getRegularStyle(color: Color(0xff1895D2), fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "These terms and conditions (“Agreement”)set forth the general terms and conditions of our use of( “1/4 gram”-drug detection mobile application ).This agreement is legally binding between you and 1/4 gram .\nIf you are entering into this agreement on behalf of a business or other legal entity .You represent that you have the authority\nto bind such an entity to this agreement, in which case the terms “User”, ”You” or “Your” shall refer to such entity .If you don’t have such authority,\nor if you don’t agree with the terms of this agreement, you mustn’t accept this agreement and may not access and use the mobile application and services , you acknowledge that you have read , understood and agree to be bound by the terms of this agreement . You acknowledge that\n this agreement is a contract between you and 1/4 gram , even though it is electronic and is not physically signed by you , and it governs your use of the mobile application and the services.",
                  style: getRegularStyle(color: Colors.black, fontSize: 11),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Table of contents",
                  style: getSemiBoldStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "1 Accounts and membership",
                  style:
                  getRegularStyle(color: Color(0xff1895D2), fontSize: 11),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2 Advertisements ",
                  style:
                  getRegularStyle(color: Color(0xff1895D2), fontSize: 11),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "3 Changes and amendments ",
                  style:
                  getRegularStyle(color: Color(0xff1895D2), fontSize: 11),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "4 Acceptance of these terms",
                  style:
                  getRegularStyle(color: Color(0xff1895D2), fontSize: 11),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "5 Contacting us ",
                  style:
                  getRegularStyle(color: Color(0xff1895D2), fontSize: 11),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Accounts and membership",
                  style: getSemiBoldStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "you must be at least 16 years old to use this mobile application and services. By using this mobile application and services and by agreeing to this agreement you warrant and represent that you are at least 16 years of age.\nIf you create an account in this mobile application , you are responsible of maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it . We may , but have no obligation to, monitor and review new accounts before you may sign in and start using the services. Providing false contact information of any kind may result in the termination of your account . You must immediately notify us of any unauthorized uses of your account or any other breaches of security . We will not be liable for any acts or omissions by you, including any damages of any kind incurred as a result of such acts or omissions. We may suspend , disable , or delete your account ( or any part thereof ) if we determine that you have violated any provision  of this agreement or that you conduct or content would tend to damage our reputation and goodwill.\nIf we delete your account for the foregoing reasons, you may not re-register for our services. We may block your email address and internet protocol address to prevent further registration.",
                    style: getRegularStyle(color: Colors.black, fontSize: 11)),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Advertisements ",
                  style: getSemiBoldStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    "During your use of the mobile application and services ,you may enter in correspondence with or participate in  promotions of advertisers or sponsors showing their goods or services through tha mobile application and services. Any such activity , and any terms , conditions , warranties or representations associated with such activity , is solely between you and the applicable third party. We shall have no liability , obligation or responsibility for any such correspondence, purchase or promotion between you and any such third party.",
                    style: getRegularStyle(color: Colors.black, fontSize: 11)),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Changes and amendments ",
                  style: getSemiBoldStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    "we reserve the right to modify this agreement or it’s terms related to the mobile application and services at any time at our discretion. when we do ,\nwe will revise the update date at the bottom of this page. We may also provide notice to you in other ways at our discretion, such as through the contact information you have provided.\n  \nAn updated version of this agreement will be effective immediately upon the posting of the revised agreement unless otherwise specified . Your continued use of the mobile application and services after the effective date of the revised agreement (or such other act specified at the time)\nwill constitute your consent to those changes.",
                    style: getRegularStyle(color: Colors.black, fontSize: 11)),
                SizedBox(
                  height: 15,
                ),
                Text(
                  " Acceptance of these terms ",
                  style: getSemiBoldStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    "You acknowledge that you have read this agreement and agree  to all it’s terms and conditions .By accessing and using the mobile application and services you agree to be bound by this agreement. If you don’t agree to abide by the terms of this agreement you are not authorized to access or use the mobile application and services.",
                    style: getRegularStyle(color: Colors.black, fontSize: 11)),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Contacting us",
                  style: getSemiBoldStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    "If you have any questions ,concerns or complaints regarding this agreement , We encourage you to contact us using the details below:",
                    style: getRegularStyle(color: Colors.black, fontSize: 11)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
