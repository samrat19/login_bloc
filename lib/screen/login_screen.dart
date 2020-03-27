import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterlogin/logic/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'give your email id',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'give your password',
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            RaisedButton(
              color: Colors.amberAccent,
              onPressed: () {
                loginBloc.add(
                  ImplementLoginEvent(
                    emailController.text,
                    passwordController.text,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
