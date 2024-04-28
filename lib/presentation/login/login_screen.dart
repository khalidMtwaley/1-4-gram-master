import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gram/presentation/Payment/Payment.dart';
import 'package:gram/presentation/Sign%20Up/sign_up0.dart';
import 'package:gram/presentation/main_veiw/profile/profile.dart';
import 'package:gram/presentation/reset_pass/resetPass.dart';
import 'package:gram/shared/component/component.dart';

import '../../SampleInformation/sample_information.dart';
import '../../domain/Auth/auth_cubit.dart';
import '../../domain/Auth/auth_states.dart';
import '../../resource/assets_manager.dart';
import '../../resource/styles_manager.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<AuthCubit, AuthStates>(listener: (context, state) {
    //   if (state is loginLoadingState) {
    //     showAlertDialog(
    //         context: context,
    //         backgroundColor: Colors.white,
    //         content: AnimatedContainer(
    //           duration: const Duration(seconds: 1),
    //           curve: Curves.easeIn,
    //           child: Row(
    //             children: [
    //               SizedBox(width: 12.5),
    //               Text(
    //                 "loading....",
    //                 style: TextStyle(fontWeight: FontWeight.w500),
    //               ),
    //             ],
    //           ),
    //         ));
    //   } else if (state is loginFailedState) {
    //     showAlertDialog(
    //         context: context,
    //         backgroundColor: Colors.red,
    //         content: Text(state.message));
    //   } else if (state is loginSuccessState) {
    //    Navigator.pop(context); // عشان يخرج من alertDialog
    //     Navigator.push(context, MaterialPageRoute(builder: (context)=> SampleInformation()));
    //   }
    // }, builder: (context, state) {
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text("Sign in",
                          style:
                              getBoldStyle(color: Colors.black, fontSize: 24)),
                    ), //Login
                    SizedBox(
                      height: 35,
                    ),
                    //----------------------------------------
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
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
                    ), // email
                    SizedBox(
                      height: 20,
                    ),
                    //---------------------------------------
                    Text(
                      "mobile number",
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Invalid Phone";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "01144556848",
                              border: InputBorder.none),
                        ),
                      ),
                    ), // Phone
                    SizedBox(
                      height: 20,
                    ),
                    //----------------------------------------------
                    Text(
                      "Password",
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "This field must not be empty";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "********", border: InputBorder.none),
                        ),
                      ),
                    ), //password
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetPass()));
                        },
                        child: Text(
                          "Forgot password?",
                          style: getRegularStyle(
                              color: Color(0xff1895D2), fontSize: 16),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    //----------------------------------------
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: defaultButton(
                        function: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                          // if (formKey.currentState!.validate() == true) {
                          //   BlocProvider.of<AuthCubit>(context).login(
                          //       email: emailController.text,
                          //       password: passwordController.text);
                          },
                        // text: state is loginLoadingState
                        //     ? "loading..."
                        //
                             text: "Sign in",
                        color: Color(0xff1895D2),
                      ),
                    ), // button sign up
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: Color(0xff1895D2),
                          )),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 7),
                            child: Text(
                              "Or",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff1895D2)),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: Color(0xff1895D2),
                          ))
                        ],
                      ),
                    ), // divider
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        height: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(ImageAssets.facebook),
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Contact with facebook",
                              style: getRegularStyle(
                                  color: Colors.black, fontSize: 17),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffF9F8F8)),
                        ),
                      ),
                    ), // withfacebook
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(ImageAssets.google),
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Contact with google",
                              style: getRegularStyle(
                                  color: Colors.black, fontSize: 17))
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffF9F8F8),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xffF9F8F8)),
                      ),
                    ), // withgoogle
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have An Account?",
                          style: getRegularStyle(
                              color: Colors.black, fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup0()));
                            },
                            child: Text(
                              "Click To Sign Up",
                              style: getRegularStyle(
                                  color: Color(0xff1895D2), fontSize: 16),
                            ))
                      ],
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
