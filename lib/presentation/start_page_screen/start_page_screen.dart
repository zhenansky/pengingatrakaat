import 'package:flutter/material.dart';
import 'package:shalat_yuk/core/app_export.dart';
import 'package:shalat_yuk/widgets/app_bar/appbar_leading_image.dart';
import 'package:shalat_yuk/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shalat_yuk/widgets/app_bar/custom_app_bar.dart';

class StartPageScreen extends StatelessWidget {
  const StartPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: Container(
                height: 724.v,
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 62.h, top: 192.v, right: 62.h),
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 266.v,
                          width: 236.h,
                          margin: EdgeInsets.only(top: 21.v),
                          decoration: BoxDecoration(color: appTheme.teal200))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: 42.v,
                          width: 137.h,
                          margin: EdgeInsets.only(left: 14.h),
                          decoration: BoxDecoration(
                              color: appTheme.lime100,
                              borderRadius: BorderRadius.circular(20.h))))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 28.h, top: 19.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(26.h, 20.v, 26.h, 19.v))
        ],
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
