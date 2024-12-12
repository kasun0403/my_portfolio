import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const ProjectCard({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.black,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 200,
            width: 400,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black12,
      ),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 6 / 4,
        crossAxisSpacing: 10,
        children: [
          ProjectCard(
            title: 'Project 1',
            imagePath: 'assets/images/profile.jpg',
          ),
          ProjectCard(
            title: 'Project 2',
            imagePath: 'assets/images/profile.jpg',
          ),
          ProjectCard(
            title: 'Project 2',
            imagePath: 'assets/images/profile.jpg',
          ),
          // Add more project cards as needed
        ],
      ),
    );
  }
}
