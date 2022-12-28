import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:untitled/utils/device_type.dart';
import 'package:untitled/utils/theme/app_colors.dart';
import 'package:untitled/utils/theme/app_fonts.dart';
import 'package:untitled/utils/widgets/web_widgets.dart';

class AssessmentResultMobile extends StatelessWidget {
  late TextTheme textTheme;
  @override
  Widget build(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DownloadTexts(
                downloadReport: () {},
                downloadSummary: () {},
                homeIconTap: () {},
              ),
              SizedBox(
                height: 15.h,
              ),
              NameAndVasanaBox(
                userName: "User",
                info: VasanaTypeInfo(
                  vasanaType: "Sa",
                  vasanaTypeDescription:
                      "Powers are consistent. They take things on and will work forever to get them finished. This endurance is a tremendous benefit to a team because it pulls people along-side them who want to make sure things get accomplished. Powers typically become the glue in a relationship—staying in touch, keeping tabs, etc.",
                  dataMap: {"Sa": 5, "Re": 4, "Ga": 3, "Ma": 2},
                  matchInfo: [
                    VasanaTypeMatch(type: VasanaType.ga, match: 3),
                    VasanaTypeMatch(type: VasanaType.re, match: 4),
                    VasanaTypeMatch(type: VasanaType.ma, match: 2),
                    VasanaTypeMatch(
                      type: VasanaType.sa,
                      match: 5,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              GraphSection(
                  info: VasanaTypeInfo(
                      vasanaType: "Sa",
                      vasanaTypeDescription:
                          "Powers are consistent. They take things on and will work forever to get them finished. This endurance is a tremendous benefit to a team because it pulls people along-side them who want to make sure things get accomplished. Powers typically become the glue in a relationship—staying in touch, keeping tabs, etc.",
                      dataMap: {
                    "Sa": 5,
                    "Re": 4,
                    "Ga": 3,
                    "Ma": 2
                  },
                      matchInfo: [
                    VasanaTypeMatch(type: VasanaType.ga, match: 3),
                    VasanaTypeMatch(type: VasanaType.re, match: 4),
                    VasanaTypeMatch(type: VasanaType.ma, match: 2),
                    VasanaTypeMatch(
                      type: VasanaType.sa,
                      match: 5,
                    )
                  ])),
              SizedBox(
                height: 40.h,
              ),
              Container(
                color: Colors.grey.withOpacity(0.1),
                padding: EdgeInsets.all(10.sp),
                child: Column(
                  children: [
                    BottomChildContainer(
                      title: "Strengths in Business",
                      content:
                          "Rude or abusive people\nBeing excluded from the process\nHaving the value you bring discounted",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BottomChildContainer(
                      title: "Weaknesses in Business",
                      content:
                          "Rude or abusive people\nBeing excluded from the process\nHaving the value you bring discounted",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BottomChildContainer(
                      title: "Your Pet Peeves",
                      content:
                          "Rude or abusive people\nBeing excluded from the process\nHaving the value you bring discounted",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AssessmentResultWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PreFilledHeaderFooter(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: NameAndVasanaBox(
                    userName: "User",
                    info: VasanaTypeInfo(
                      vasanaType: "Sa",
                      vasanaTypeDescription:
                          "Powers are consistent. They take things on and will work forever to get them finished. This endurance is a tremendous benefit to a team because it pulls people along-side them who want to make sure things get accomplished. Powers typically become the glue in a relationship—staying in touch, keeping tabs, etc.",
                      dataMap: {
                        "Sa": /*double.parse("${resultResponse.data!.saScore}")*/ 5,
                        "Re": /*double.parse("${resultResponse.data!.reScore}")*/ 4,
                        "Ga": /*double.parse("${resultResponse.data!.gaScore}")*/ 3,
                        "Ma": /*double.parse("${resultResponse.data!.maScore}")*/ 2
                      },
                      matchInfo: [
                        VasanaTypeMatch(type: VasanaType.ga, match: 3),
                        VasanaTypeMatch(type: VasanaType.re, match: 4),
                        VasanaTypeMatch(type: VasanaType.ma, match: 2),
                        VasanaTypeMatch(type: VasanaType.sa, match: 5),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      DownloadTexts(
                        downloadReport: () {},
                        downloadSummary: () {},
                        homeIconTap: () {},
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GraphSection(
                        info: VasanaTypeInfo(
                          vasanaType: "Sa",
                          vasanaTypeDescription:
                              "Powers are consistent. They take things on and will work forever to get them finished. This endurance is a tremendous benefit to a team because it pulls people along-side them who want to make sure things get accomplished. Powers typically become the glue in a relationship—staying in touch, keeping tabs, etc.",
                          dataMap: {
                            "Sa": /*double.parse("${resultResponse.data!.saScore}")*/ 5,
                            "Re": /*double.parse("${resultResponse.data!.reScore}")*/ 4,
                            "Ga": /*double.parse("${resultResponse.data!.gaScore}")*/ 3,
                            "Ma": /*double.parse("${resultResponse.data!.maScore}")*/ 2
                          },
                          matchInfo: [
                            VasanaTypeMatch(type: VasanaType.ga, match: 3),
                            VasanaTypeMatch(type: VasanaType.re, match: 4),
                            VasanaTypeMatch(type: VasanaType.ma, match: 2),
                            VasanaTypeMatch(type: VasanaType.sa, match: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              color: Colors.grey.withOpacity(0.1),
              padding: EdgeInsets.all(10.sp),
              child: Row(
                children: [
                  Expanded(
                      child: BottomChildContainer(
                    title: "Strengths in Business",
                    content:
                        "Rude or abusive people\nBeing excluded from the process\nHaving the value you bring discounted",
                  )),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                      child: BottomChildContainer(
                    title: "Weaknesses in Business",
                    content:
                        "Rude or abusive people\nBeing excluded from the process\nHaving the value you bring discounted",
                  )),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                      child: BottomChildContainer(
                    title: "Your Pet Peeves",
                    content:
                        "Rude or abusive people\nBeing excluded from the process\nHaving the value you bring discounted",
                  )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

Color getVasanaColour(String vasanaType) {
  if (vasanaType.toLowerCase() == VasanaType.sa.name.toLowerCase()) {
    return AppColors.darkBlue;
  } else if (vasanaType.toLowerCase() == VasanaType.re.name.toLowerCase()) {
    return AppColors.mediumBlue;
  } else if (vasanaType.toLowerCase() == VasanaType.ga.name.toLowerCase()) {
    return AppColors.darkGrey;
  } else {
    return AppColors.lightBlue2;
  }
}

class NameAndVasanaBox extends StatelessWidget {
  final String userName;
  final VasanaTypeInfo info;
  TextTheme? textTheme;
  NameAndVasanaBox({super.key, required this.userName, required this.info});
  @override
  Widget build(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: textTheme?.bodyText1,
        ),
        Text(
          'Here are your Vasana type results',
          style: TextStyle(
              fontSize: 16.sp,
              fontFamily: AppFonts.santoshiMedium,
              color: Colors.grey[600]),
        ),
        SizedBox(
          height: 30.h,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
              right: 25.sp, top: 15.sp, left: 10.sp, bottom: 7.sp),
          color: Colors.grey.withOpacity(0.1),
          child: Container(
            padding: EdgeInsets.only(
                left: 15.sp, right: 15.sp, top: 15.sp, bottom: 30.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.sp),
              color: Theme.of(context).cardColor,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vasana Type',
                      style: textTheme?.bodyText1
                          ?.copyWith(fontSize: 22.sp, color: Colors.black),
                    ),
                    if (info.vasanaType.isNotEmpty) ...{
                      Container(
                        padding: EdgeInsets.all(
                            ScreenRendering.responsiveHorizontalWidth(
                                webWithW: 5.w,
                                mobileWithSp: 18.sp,
                                context: context)),
                        decoration: BoxDecoration(
                            color: getVasanaColour(info.vasanaType),
                            shape: BoxShape.circle),
                        child: Text(
                          info.vasanaType,
                          style: textTheme!.bodyText1!.copyWith(
                              color: AppColors.white, fontSize: 23.sp),
                        ),
                      )
                    }
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                if (info.vasanaTypeDescription.isNotEmpty) ...{
                  Text(
                    info.vasanaTypeDescription,
                    // style: textTheme?.headline1?.copyWith(color: Colors.black),
                  )
                }
              ],
            ),
          ),
        )
      ],
    );
  }
}

class DownloadTexts extends StatelessWidget {
  const DownloadTexts({
    super.key,
    this.downloadReport,
    this.downloadSummary,
    this.homeIconTap,
  });
  final void Function()? downloadReport;
  final void Function()? downloadSummary;
  final void Function()? homeIconTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: ScreenRendering.getScreenType(context: context) !=
              DeviceScreenType.desktop
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: downloadReport,
            child: Text(
              'Download Report',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontFamily: AppFonts.santoshiMedium),
            )),
        TextButton(
            onPressed: downloadReport,
            child: Text(
              'Download Summary',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontFamily: AppFonts.santoshiMedium),
            )),
        if (kIsWeb) ...{
          IconButton(
            constraints: const BoxConstraints(),
            padding: EdgeInsets.zero,
            onPressed: homeIconTap,
            icon: const Icon(Icons.home),
          ),
        }
      ],
    );
  }
}

class BottomChildContainer extends StatelessWidget {
  TextTheme? textTheme;
  final String title;
  final String content;

  BottomChildContainer({super.key, required this.title, required this.content});
  @override
  Widget build(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        children: [
          // Title
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                border: const Border(
                    bottom: BorderSide(color: Colors.grey, width: 1))),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontFamily: AppFonts.santoshiMedium),
            ),
          ),

          // Additional points
          // ...e.points.map((e) => Text(e.toString())).toList(),
          SizedBox(
            height: 15.h,
          ),
          Text(
            content,
            style: textTheme!.subtitle1!.copyWith(height: 2.h),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}

class GraphSection extends StatelessWidget {
  GraphSection({
    super.key,
    required this.info,
  });
  final VasanaTypeInfo info;
  TextTheme? textTheme;
  @override
  Widget build(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: ScreenRendering.getScreenType(context: context) !=
              DeviceScreenType.desktop
          ? MainAxisAlignment.center
          : MainAxisAlignment.end,
      children: [
        if (info.dataMap.isNotEmpty) ...{
          PieChart(
            dataMap: info.dataMap,
            animationDuration: const Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            // chartRadius: MediaQuery.of(context).size.width / 6,
            chartRadius: ScreenRendering.responsiveHorizontalWidth(
                webWithW: 50.w, mobileWithSp: 175.sp, context: context),
            colorList: const [
              AppColors.darkBlue,
              AppColors.mediumBlue,
              AppColors.darkGrey,
              AppColors.lightBlue2,
            ],
            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 20.sp,
            legendOptions: const LegendOptions(showLegends: false),
            chartValuesOptions:
                const ChartValuesOptions(showChartValues: false),
          ),
        },
        SizedBox(
          width: 25.sp,
        ),
        // Sa, Re, Ga and Ma options
        if (info.matchInfo.isNotEmpty) ...{
          Column(
            children: info.matchInfo
                .map(
                  (e) => Container(
                    width: kIsWeb &&
                            ScreenRendering.getScreenType(context: context) ==
                                DeviceScreenType.desktop
                        ? 125.sp
                        : 85.sp,
                    padding: EdgeInsets.symmetric(vertical: 5.sp),
                    margin: EdgeInsets.only(bottom: 15.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.all(
                                ScreenRendering.responsiveHorizontalWidth(
                                    webWithW: 3.w,
                                    mobileWithSp: 8.sp,
                                    context: context)),
                            decoration: BoxDecoration(
                                color:
                                    getVasanaColour(e.type.name.toLowerCase()),
                                shape: BoxShape.circle),
                            child: Text(
                              e.match.toString(),
                              style: textTheme!.bodyText1!
                                  .copyWith(color: AppColors.white),
                            )),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "${e.type.name[0].toUpperCase()}${e.type.name.substring(1).toLowerCase()}",
                          style:
                              textTheme!.bodyText1!.copyWith(fontSize: 22.sp),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        }
      ],
    );
  }
}

class VasanaTypeInfo {
  String vasanaType;
  String vasanaTypeDescription;
  Map<String, double> dataMap;
  List<VasanaTypeMatch> matchInfo;

  VasanaTypeInfo({
    required this.vasanaType,
    required this.vasanaTypeDescription,
    required this.dataMap,
    required this.matchInfo,
  });
}

class VasanaTypeMatch {
  VasanaType type;
  int match;

  VasanaTypeMatch({required this.type, required this.match});
}

class AdditionalInfo {
  String title;
  List<String> points;

  AdditionalInfo({required this.title, required this.points});
}

enum VasanaType { sa, re, ga, ma }
