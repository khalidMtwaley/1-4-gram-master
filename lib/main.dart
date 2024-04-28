import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gram/presentation/Employee/employee.dart';
import 'package:gram/presentation/Instruction/instruction.dart';
import 'package:gram/presentation/Reservation/Result/abnormal.dart';
import 'package:gram/presentation/Sign%20Up/Verification_code.dart';
import 'package:gram/presentation/Sign%20Up/sign_up.dart';
import 'package:gram/presentation/Steps/steps.dart';
import 'package:gram/presentation/main_veiw/chatbot/chatBot0.dart';
import 'package:gram/presentation/main_veiw/home/Home.dart';
import 'package:gram/presentation/main_veiw/main_veiw.dart';
import 'package:gram/presentation/reset_pass/Confirm_Pass.dart';
import 'package:gram/presentation/reset_pass/resetPass.dart';
import 'package:gram/presentation/reset_pass/verification_resetPass.dart';
import 'domain/Auth/auth_cubit.dart';
import 'presentation/Reservation/Result/Failed to retrieve sensor.dart';
import 'presentation/Reservation/Result/No pupil detected.dart';
import 'presentation/Reservation/Result/normal.dart';
import 'presentation/Reservation/Result/result_screen.dart';
import 'presentation/Reservation/get_image/get_image.dart';
import 'presentation/Splash/Splash.dart';
import 'presentation/chat/chat.dart';
import 'presentation/login/login_screen.dart';
import 'presentation/onboarding/onboarding.dart';
// import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers:[ BlocProvider(create: (context)=>AuthCubit()),],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '1/4gram',
      theme: ThemeData(),
      home: no_detected(),
    ));
  }
}

