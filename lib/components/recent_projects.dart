import 'package:flutter/material.dart';
import 'package:kasun_tharanga/components/project_card.dart';
import 'package:kasun_tharanga/data/project_data.dart';
import 'package:kasun_tharanga/pages/projects/firebase_auth_project.dart';
import 'package:kasun_tharanga/pages/projects/weather_app_project.dart';
import 'package:kasun_tharanga/pages/projects/portfolio_web_project.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Some of my Recent Projects',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeatherAppProject(),
                    ),
                  );
                },
                child: ProjectCard(project: ProjectData.projects[0])),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PortfolioProject(),
                    ),
                  );
                },
                child: ProjectCard(project: ProjectData.projects[1])),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FirebaseAuthProject(),
                      ));
                },
                child: ProjectCard(project: ProjectData.projects[2])),
          ],
        ),
      ],
    );
  }
}
