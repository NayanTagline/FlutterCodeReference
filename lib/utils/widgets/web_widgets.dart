import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/utils/app_images.dart';
import 'package:untitled/utils/app_strings.dart';
import 'package:untitled/utils/theme/app_colors.dart';
import 'package:untitled/utils/theme/app_fonts.dart';
import 'package:untitled/utils/theme/app_theme.dart';

import '../device_type.dart';

class WebWidgets {
  static Widget textField(
      {required TextEditingController controller,
      required Function onChanged,
      required String hintText,
      required bool obscureText,
      required bool enabled,
      required String? Function(String?)? validator,
      required BuildContext context}) {
    return SizedBox(
      width: ScreenRendering.responsiveHorizontalWidth(
          webWithW: 85.w,
          mobileWithSp: MediaQuery.of(context).size.width * 0.76,
          context: context),
      child: TextFormField(
        // enabled: false, // to trigger disabledBorder
        maxLines: 1,
        enabled: enabled,

        style: const TextStyle(fontFamily: AppFonts.santoshiMedium),
        validator: validator,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10.sp, 20.sp, 20.sp, 0),
          /*focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.red),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.orange),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.green),
          ),*/
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 2.sp, color: Colors.yellow)),
          /*errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 1, color: Colors.black)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 1, color: Colors.yellowAccent)),*/
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
          // errorText: snapshot.error,
        ),
        controller: controller,
        onChanged: onChanged(),
        obscureText: obscureText,
      ),
    );
  }

  static Widget roundedButton({
    required BuildContext context,
    required Color fillColor,
    required Color textColor,
    required String title,
    required double horizontalPadding,
    required double verticalPadding,
    required Function onPressed,
    required bool inProgress,
  }) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onPressed(),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          decoration: BoxDecoration(
              color: fillColor, borderRadius: BorderRadius.circular(25.sp)),
          child: inProgress
              ? Center(
                  child: SizedBox(
                    height: 20.sp,
                    width: 20.sp,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 3.0,
                    ),
                  ),
                )
              : Text(
                  title,
                  style: textTheme.headline1?.copyWith(color: AppColors.white),
                ),
        ),
      ),
    );
  }

  static Widget bottomTextColumn(
      {required String title, required String subTitle}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontFamily: AppFonts.satoshiRegular),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          subTitle,
          style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontFamily: AppFonts.santoshiBold),
        ),
      ],
    );
  }
}

class PreFilledHeaderFooter extends StatelessWidget {
  const PreFilledHeaderFooter(
      {super.key, required this.child, this.isLogoutButton = false});
  final Widget child;
  final bool isLogoutButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(isLogoutButton: isLogoutButton), // HEADER
        Expanded(child: child),
        const CustomFooter(), // FOOTER
      ],
    );
  }
}

class CustomHeader extends StatelessWidget {
  final bool isLogoutButton;
  const CustomHeader({super.key, this.isLogoutButton = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: double.infinity,
      color: AppColors.darkBlue,
      alignment: Alignment.centerLeft,
      padding:
          EdgeInsets.only(top: 18.h, bottom: 18.h, left: 50.w, right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImages.vasanaLogo, color: Colors.white),
          if (isLogoutButton) ...{
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () async {
                /*  await AppFunctions.saveAppState(state: AppConstants.login);
                await AppFunctions.deleteAccessTokenToSharedPrefs();
                CookieManager.deleteCookies("given_name");
                CookieManager.deleteCookies("email");
                GoRouter.of(context).pushReplacement(LoginMainPage.route);*/
              },
              child: const Text('Log out'),
            ),
          },
        ],
      ),
    );
  }
}

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  Widget bottomTextColumn({required String title, required String subTitle}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontFamily: AppFonts.satoshiRegular),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          subTitle,
          style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontFamily: AppFonts.santoshiBold),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(top: BorderSide(width: 1.0, color: Colors.black)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        bottomTextColumn(
                            title: AppStrings.phNo,
                            subTitle: "+355 (0) 694045400"),
                        SizedBox(
                          width: 15.w,
                        ),
                        bottomTextColumn(
                            title: AppStrings.email,
                            subTitle: "vasana@redazure.com"),
                        SizedBox(
                          width: 15.w,
                        ),
                        bottomTextColumn(
                            title: AppStrings.address,
                            subTitle: "9 Woodlawn Drive, Chatham NJ, 07928"),
                      ],
                    ),
                    MediaQuery.of(context).size.width > 1250
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                AppStrings.products,
                                style: AppTheme.footerBoldBlack,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                AppStrings.ourTeam,
                                style: AppTheme.footerBoldBlack,
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                AppStrings.contact,
                                style: AppTheme.footerBoldBlack,
                              ),
                            ],
                          )
                        : SizedBox(),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Image.asset(
                      AppImages.linkedIn,
                      height: 25.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset(
                      AppImages.facebook,
                      height: 25.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset(
                      AppImages.twitter,
                      height: 25.h,
                    ),
                  ],
                )
              ],
            ),
          ),
          MediaQuery.of(context).size.width < 1250
              ? Column(
                  children: [
                    Text(
                      AppStrings.products,
                      style: AppTheme.footerBoldBlack,
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
                    Text(
                      AppStrings.ourTeam,
                      style: AppTheme.footerBoldBlack,
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
                    Text(
                      AppStrings.contact,
                      style: AppTheme.footerBoldBlack,
                    ),
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
