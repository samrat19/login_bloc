import 'package:bloc/bloc.dart';

enum LoginState{ loggedIn, loggedOut,}

class LoginEvent{}

class InitLoginEvent extends LoginEvent{
  final String emailId;
  final String password;

  InitLoginEvent(this.emailId, this.password);
}

class LoginBloc extends Bloc<LoginEvent,LoginState>{
  @override
  // TODO: implement initialState
  LoginState get initialState => LoginState.loggedOut;

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async*{

    if(event is InitLoginEvent){
      if(event.emailId == event.password){
        yield LoginState.loggedIn;
      }else{
        yield LoginState.loggedOut;
      }
    }
  }
}