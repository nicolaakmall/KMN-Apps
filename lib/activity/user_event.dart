part of 'user_bloc.dart';

abstract class UserEvent {}

class FetchUser extends UserEvent {
  final int page;

  FetchUser({required this.page});
}
