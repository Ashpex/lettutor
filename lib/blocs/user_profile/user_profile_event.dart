part of 'user_profile_bloc.dart';

abstract class UserProfileEvent extends Equatable {
  const UserProfileEvent();

  @override
  List<Object> get props => [];
}

class FetchUserInfodEvent extends UserProfileEvent {}

class SavePressedEvent extends UserProfileEvent {
  final User user;
  final XFile avatar;
  SavePressedEvent(this.user, {this.avatar});
}
