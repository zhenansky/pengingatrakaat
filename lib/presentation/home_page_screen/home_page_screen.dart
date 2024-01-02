import 'package:flutter/material.dart';
import 'package:shalat_yuk/core/app_export.dart';
import 'package:shalat_yuk/widgets/app_bar/appbar_leading_image.dart';
import 'package:shalat_yuk/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shalat_yuk/widgets/app_bar/custom_app_bar.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.lime100,
            appBar: _buildAppBar(context),
            body: Container(
                height: 724.v,
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 51.h, top: 155.v, right: 51.h),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(top: 20.v, right: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 34.h, vertical: 35.v),
                          decoration: AppDecoration.fillWhiteA,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 15.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          height: 70.v,
                                          width: 75.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.teal200)),
                                      Container(
                                          height: 70.v,
                                          width: 75.h,
                                          margin: EdgeInsets.only(left: 35.h),
                                          decoration: BoxDecoration(
                                              color: appTheme.teal200))
                                    ]),
                                SizedBox(height: 50.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: 70.v,
                                              width: 75.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.teal200)),
                                          Container(
                                              height: 70.v,
                                              width: 75.h,
                                              margin:
                                                  EdgeInsets.only(left: 33.h),
                                              decoration: BoxDecoration(
                                                  color: appTheme.teal200))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 41.v,
                          width: 177.h,
                          decoration: BoxDecoration(
                              color: appTheme.teal200,
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
