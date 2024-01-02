import 'package:flutter/material.dart';
import 'package:shalat_yuk/core/app_export.dart' as appExport;

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    appExport.mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Expanded(child: _buildLandingPageContent(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLandingPageContent(BuildContext context) {
    double screenHeight = appExport.mediaQueryData.size.height;
    double orangeContainerHeight = screenHeight * 3 / 4;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 101.v,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: orangeContainerHeight,
            decoration: appExport.AppDecoration.fillLime.copyWith(
              borderRadius: appExport.BorderRadiusStyle.customBorderBL20,
            ),
            child: Center(
              child: Text(
                "Sholat yuk!",
                style: appExport.theme.textTheme.displayMedium,
              ),
            ),
          ),
          SizedBox(height: 20.v), // Adjust as needed
          ElevatedButton(
            onPressed: () {
              // Add your button press logic here
            },
            style: ElevatedButton.styleFrom(
              primary: appExport.appTheme.cyan900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
              ),
            ),
            child: Container(
              height: 57.v,
              width: 283.h,
              child: Center(
                child: Text(
                  'Tombol',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
