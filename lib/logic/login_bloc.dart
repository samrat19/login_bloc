import 'package:flutter_bloc/flutter_bloc.dart';

enum LoginState { loggedIn, loggedOut ,errorLogin}

abstract class LoginEvent {}

class ImplementLoginEvent extends LoginEvent {
  final String emailId;
  final String password;

  ImplementLoginEvent(
    this.emailId,
    this.password,
  );
}

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  @override
  LoginState get initialState => LoginState.loggedOut;

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async*{

    if(event is ImplementLoginEvent){
      if(event.emailId == event.password){
        yield LoginState.loggedIn;
      }else{
        yield LoginState.errorLogin;
      }
    }
  }
}
