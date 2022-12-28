import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/utils/theme/app_colors.dart';
import 'package:untitled/utils/theme/app_fonts.dart';

class AppTheme {
  static TextStyle footerBoldBlack = TextStyle(
      color: Colors.black, fontSize: 12.sp, fontFamily: AppFonts.santoshiBold);
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    cardColor: Colors.grey.withOpacity(0.4),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        //this is default transition
        //TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        //You can set iOS transition on Andoroid
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.grey.withOpacity(0.1),
    textTheme: TextTheme(
      bodyText1: TextStyle(
          fontSize: 25.sp,
          fontFamily: AppFonts.santoshiBold,
          color: AppColors.darkBlue), // title2, titleWhite2
      bodyText2: TextStyle(color: AppColors.white, fontSize: 30.sp),
      //
      subtitle1: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontFamily: AppFonts.santoshiBold), // blackTitleBold
      //
      labelMedium: TextStyle(
          fontSize: 14.sp,
          fontFamily: AppFonts.santoshiMedium,
          color: Colors.grey[600]), // greyTitle3
      //
      headline1: TextStyle(
          fontSize: 16.sp,
          fontFamily: AppFonts.santoshiBold,
          color: AppColors
              .darkBlue), // darkBlueTextButton, whiteTextButton, title3
      headline2: TextStyle(
          fontSize: 16.sp,
          fontFamily: AppFonts.santoshiMedium,
          color: AppColors.yellow),
      //
      button: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
          fontFamily: AppFonts.satoshiRegular),
    ),
    //fontFamily: 'Montserrat',
  );
}
