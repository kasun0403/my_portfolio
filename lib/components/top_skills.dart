import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/responsive.dart';
import 'package:lottie/lottie.dart';

class TopSkills extends StatelessWidget {
  const TopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'My Professional Skills',
          style: TextStyle(
            fontSize: 28,
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
          child: Column(
            children: [
              _buildSkillRow(
                context,
                'Flutter',
                'Mobile Development',
                'assets/lottie/flutter.json',
              ),
              _buildSkillRow(
                context,
                'Firebase',
                'Database Management',
                'assets/lottie/firebaselottie.json',
              ),
              _buildSkillRow(
                context,
                'REST API & Google Map API',
                'API Integration',
                'assets/lottie/api.json',
              ),
              _buildSkillRow(
                context,
                'Git',
                'Version Control',
                'assets/lottie/git.json',
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
          Lottie.asset(iconUrl, height: 75, width: 75, fit: BoxFit.contain),
          // Image.network(
          //   iconUrl,
          //   height: 50,
          //   width: 50,
          //   fit: BoxFit.contain,
          // ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  skill,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
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
