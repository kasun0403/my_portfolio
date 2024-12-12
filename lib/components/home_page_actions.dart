import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/colors.dart';
import 'package:kasun_tharanga/utils/responsive.dart';

class HomePageActions extends StatelessWidget {
  final ScrollController sc;
  const HomePageActions({super.key, required this.sc});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return isMobile
        ? Column(
            children: getWidgets(sc, context, isMobile: true),
          )
        : Row(
            children: getWidgets(sc, context),
          );
  }

  List<Widget> getWidgets(ScrollController sc, BuildContext context,
      {bool isMobile = false}) {
    int scrollDur = isMobile ? 800 : 500;
    return [
      _buildNavButton(
        context,
        'About Me',
        200,
        scrollDur,
        isMobile,
      ),
      _buildNavButton(
        context,
        'Top Skills',
        isMobile ? 1100 : 800,
        scrollDur,
        isMobile,
      ),
      _buildNavButton(
        context,
        'Recent Projects',
        1400,
        scrollDur,
        isMobile,
      ),
      _buildNavButton(
        context,
        'Contact Me',
        isMobile ? 2600 : 1900,
        scrollDur,
        isMobile,
      ),
    ];
  }

  Padding _buildNavButton(BuildContext context, String label, double position,
      int scrollDur, bool isMobile) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 15, vertical: isMobile ? 15 : 0),
      child: TextButton(
        onPressed: () {
          if (isMobile) Navigator.pop(context);
          sc.animateTo(
            position,
            duration: Duration(milliseconds: scrollDur),
            curve: Curves.easeInOut,
          );
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: AppColors.kPrimaryColor.withOpacity(0.1),
          side: const BorderSide(color: AppColors.kPrimaryColor),
          shadowColor: AppColors.kPrimaryColor,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.kWhiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
