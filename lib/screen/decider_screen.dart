import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterlogin/logic/login_bloc.dart';
import 'package:flutterlogin/screen/error_screen.dart';
import 'package:flutterlogin/screen/home_screen.dart';
import 'package:flutterlogin/screen/login_screen.dart';

class DeciderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc,LoginState>(
      builder: (context, state) {
        switch(state){
          case LoginState.errorLogin:
            return ErrorScreen();
            break;
          case LoginState.loggedIn:
            return HomeScreen();
            break;
          case LoginState.loggedOut:
            return LoginScreen();
            break;
        }
      },
    );
  }
}
