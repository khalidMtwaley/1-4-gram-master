import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gram/presentation/Payment/Payment.dart';
import 'package:gram/presentation/Sign%20Up/Verification_code.dart';
import 'package:gram/shared/component/component.dart';
import '../../domain/Auth/auth_cubit.dart';
import '../../domain/Auth/auth_states.dart';
import '../../resource/assets_manager.dart';
import '../../resource/styles_manager.dart';
import '../login/login_screen.dart';
import '../main_veiw/profile/profile.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<AuthCubit, AuthStates>(listener: (context, state) {
    //   if (state is RegisterLoadingState) {
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
    //                 "loading...",
    //                 style: TextStyle(fontWeight: FontWeight.w500),
    //               ),
    //             ],
    //           ),
    //         ));
    //   } else if (state is RegisterFailedState) {
    //     showAlertDialog(
    //         context: context,
    //         backgroundColor: Colors.red,
    //         content: Text(
    //           state.message,
    //         ));
    //   } else if (state is RegisterSuccessState) {
    //     Navigator.pop(context);
    //     Navigator.pushReplacement(context,
    //         MaterialPageRoute(builder: (context) => verificationOtp()));
    //   }
    // }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: defaultAppBar(),
          centerTitle: true,
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text("Create Account",
                          style:
                              getBoldStyle(color: Colors.black, fontSize: 24)),
                    ), //Create Account
                    SizedBox(
                      height: 15,
                    ),
                    //-------------------------------------------
                    Text(
                      "User name",
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
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "This field must not be empty";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "John Smith",
                          ),
                        ),
                      ),
                    ), //userName
                    SizedBox(
                      height: 20,
                    ),
                    //---------------------------------------
                    Text(
                      "Your email address",
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
                      height: 40,
                    ),
                    //----------------------------------------
                    defaultButton(
                      function: () {
                        // if (formKey.currentState!.validate() == true) {
                        //   BlocProvider.of<AuthCubit>(context).Register(
                        //     name: nameController.text,
                        //     email: emailController.text,
                        //     password: passwordController.text,
                        //   );
                        // }
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                      },
                      // text: state is RegisterLoadingState
                      //     ? "loading....."
                      text  : "Sign Up",
                      color: Color(0xff1895D2),
                    ), // button sign up
                    SizedBox(
                      height: 15,
                    ),
                    Row(
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
                    ), // divider
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
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
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Have An Account?",
                          style: getRegularStyle(
                              color: Colors.black, fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginScreen()));
                            },
                            child: Text(
                              "Click To Sign In",
                              style: getRegularStyle(
                                  color: Color(0xff1895D2), fontSize: 16),
                            ))
                      ],
                    ), // have account
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}
