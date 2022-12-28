part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

class ProfileInital extends ProfileState {}

class ProfileLoading extends ProfileState {}

class UpdatingProfile extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final ProfileResponse profileModel;
  const ProfileLoaded(this.profileModel);
}

class ProfileUpdated extends ProfileState {
  final ProfileResponse profileModel;
  const ProfileUpdated(this.profileModel);
}

class ProfileError extends ProfileState {
  final String? message;
  const ProfileError(this.message);
}

class UpdateProfileError extends ProfileState {
  final String? message;
  const UpdateProfileError(this.message);
}
