import 'package:flutter_bloc/flutter_bloc.dart';

// Define AuthenticationState
abstract class AuthenticationState {}

class Authenticated extends AuthenticationState {}

class Unauthenticated extends AuthenticationState {}

// Define AuthenticationEvent
abstract class AuthenticationEvent {}

class UserLoggedIn extends AuthenticationEvent {}

class UserLoggedOut extends AuthenticationEvent {}

// Define AuthenticationBloc
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(Unauthenticated());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is UserLoggedIn) {
      yield Authenticated();
    } else if (event is UserLoggedOut) {
      yield Unauthenticated();
    }
  }
}
