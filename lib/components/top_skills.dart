import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kasun_tharanga/utils/responsive.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Professional Skills',
          style: TextStyle(
            fontSize: Responsive.isMobile(context) ? 20 : 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context)
                ? 20
                : Responsive.mdqw(context) / 6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    _buildSkillRow(
                      context,
                      'Flutter',
                      'Mobile Development',
                      'assets/svgs/flutter.svg',
                    ),
                    _buildSkillRow(
                      context,
                      'Firebase',
                      'Database Management',
                      'assets/svgs/firebase.svg',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    _buildSkillRow(
                      context,
                      'REST API & Google Map API',
                      'API Integration',
                      'assets/svgs/api.svg',
                    ),
                    _buildSkillRow(
                      context,
                      'Git',
                      'Version Control',
                      'assets/svgs/git.svg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSkillRow(
      BuildContext context, String skill, String description, String iconUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SvgPicture.asset(iconUrl, height: 50, width: 50, fit: BoxFit.contain),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  skill,
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context) ? 12 : 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context) ? 9 : 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
