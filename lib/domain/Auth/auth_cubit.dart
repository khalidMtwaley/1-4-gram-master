import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../app/app_pref.dart';
import 'auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  Map<String, String> headers = {
    "Accept": "application/json",
  };
  AuthCubit() :super (AuthInitialState());

  void Register(
      {required String name, required String email,
        required String password,
      } )async {
    emit(RegisterLoadingState());
    try{
      Response response = await http.post(
          Uri.parse("https://23e7-45-243-150-6.ngrok-free.app/signup"),
          body: {
            'user_name': name,
            'email': email,
            'password': password,
            "phone_number": "string",
          },
        headers: headers
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        if (data['status'] == true) {
          print(data);
          emit(RegisterSuccessState());
        }
        else {
          print(data);
          emit(RegisterFailedState(message: data['message']));
        }
      }
    }
    catch(e) {
      print("Failed to Register , reason : $e");
      emit(RegisterFailedState(message: e.toString()));
    }
  }
  void login({required String email , required String password}) async {
    emit(loginLoadingState());
    try {
      Response response = await http.post(
          Uri.parse("https://23e7-45-243-150-6.ngrok-free.app/login"),
          body: {
            'email_or_phone_number': email,
            'password': password
          },
          headers: headers
      );
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['status'] == true) {
          await CasheNetwork.insertToCache(key: 'token', value: responseData['data']['token']);
          emit(loginSuccessState());
        }
        else {
          emit(loginFailedState(message: responseData['message']));
        }
      }
    }
    catch(e){
      emit(loginFailedState(message: e.toString()));
    }
  }
}