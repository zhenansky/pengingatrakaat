import 'package:flutter/material.dart';
import 'package:shalat_yuk/core/app_export.dart';
import 'package:shalat_yuk/widgets/app_bar/appbar_leading_image.dart';
import 'package:shalat_yuk/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shalat_yuk/widgets/app_bar/custom_app_bar.dart';

class CalibrationPageScreen extends StatelessWidget {
  const CalibrationPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Spacer(flex: 42),
                  Container(
                      height: 201.v,
                      width: 203.h,
                      decoration: BoxDecoration(
                          color: appTheme.teal200,
                          borderRadius: BorderRadius.circular(101.h))),
                  Spacer(flex: 57)
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
