import 'package:flutter/material.dart';
import 'package:kasun_tharanga/models/project_model.dart';
import 'package:kasun_tharanga/utils/responsive.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
              spreadRadius: 3,
            )
          ],
          borderRadius: BorderRadius.circular(10),
          // color: Colors.white,
        ),
        child: SizedBox(
          // height: !Responsive.isMobile(context)
          //     ? Responsive.mdqw(context) / 4
          //     : Responsive.mdqw(context) * 1.2,
          width: !Responsive.isMobile(context)
              ? Responsive.mdqw(context) / 4
              : Responsive.mdqw(context) * 0.9,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/simple_weather_app.png"),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
