import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/models/profile_response.dart';
import 'package:untitled/repositories/profile/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInital()) {
    final ProfileRepository _apiRepository = ProfileRepository();

    on<GetProfileDetails>((event, emit) async {
      try {
        emit(ProfileLoading());
        final mList = await _apiRepository.getProfileDetails(
          event.context,
        );
        if (mList.success == true) {
          /*CookieManager.addToCookie(
              "given_name",
              mList.data!.userAttributes!
                  .firstWhere((element) => element.name == "given_name")
                  .value!);
          CookieManager.addToCookie(
              "email",
              mList.data!.userAttributes!
                  .firstWhere((element) => element.name == "email")
                  .value!);*/
          emit(ProfileLoaded(mList));
        }
        // AppFunctions.reLoginTokenExpired(mList.statusCode!, event.context);

        if (mList.message != "") {
/*          print(
              "${mList.statusCode.toString()} statusCodestatusCodestatusCode");
          await AppFunctions.saveAppState(state: AppConstants.login);
          event.context.go(LoginMainPage.route);*/
          emit(ProfileError(mList.message));
        }
      } on NetworkError {
        emit(
            const ProfileError("Failed to fetch data. is your device online?"));
      }
    });

    on<UpdateProfile>((event, emit) async {
      try {
        emit(UpdatingProfile());
        final mList = await _apiRepository.updateProfile(
            context: event.context, body: {"given_name": event.givenName});
        if (mList.success == true) {
          emit(ProfileUpdated(mList));
        }

        if (mList.error == true) {
          emit(UpdateProfileError(mList.message));
        }
      } on NetworkError {
        emit(const UpdateProfileError(
            "Failed to fetch data. is your device online?"));
      }
    });
  }
}
