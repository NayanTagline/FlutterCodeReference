import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:untitled/screens/assessment_result/assessment_views.dart';

class AssessmentMainPage extends StatefulWidget {
  static const route = "/dashboard/result";

  @override
  State<AssessmentMainPage> createState() => _AssessmentMainPageState();
}

class _AssessmentMainPageState extends State<AssessmentMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(builder: (context, sizingInformation) {
        /*   AppFunctions.reLoginTokenExpired(
                        profileState.profileModel.statusCode!, context);*/
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return AssessmentResultWebPage();
        }

        return AssessmentResultMobile();

        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
