import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/colors.dart';
import 'package:kasun_tharanga/utils/responsive.dart';
import 'package:kasun_tharanga/utils/util_untions.dart';

class SocialIconsBar extends StatelessWidget {
  static const Color kBgColor = Color(0xFF202326);
  static const Color kPrimaryColor = Color.fromARGB(255, 2, 55, 109);

  const SocialIconsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      top: Responsive.mdqh(context) * 0.2,
      child: Column(
        children: [
          _buildSocialIcon(
            context,
            "assets/images/linkedin.png",
            'https://www.linkedin.com/in/kasun-edirisooriya-06101219b/',
          ),
          const SizedBox(height: 15),
          _buildSocialIcon(
            context,
            "assets/images/github.png",
            'https://github.com/kasun0403',
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(BuildContext context, String iconData, String link) {
    return GestureDetector(
      onTap: () {
        // Action to open the link
        UtillFunctions().launchURL(link);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: kBgColor,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.kBgColor.withOpacity(0.1)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 6,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Image.asset(
            iconData,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
