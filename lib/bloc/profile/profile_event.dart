part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class GetProfileDetails extends ProfileEvent {
  BuildContext context;

  GetProfileDetails({
    required this.context,
  });
}

class UpdateProfile extends ProfileEvent {
  BuildContext context;
  String givenName;

  UpdateProfile({
    required this.context,
    required this.givenName,
  });
}
