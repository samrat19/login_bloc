import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterlogin/logic/login_bloc.dart';
import 'file:///D:/My_Programs/login_bloc/lib/decider_widget.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        child: DeciderWidget(),
      )
    );
  }
}
