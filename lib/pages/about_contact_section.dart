import 'package:flutter/material.dart';

class AboutAndContactSection extends StatelessWidget {
  const AboutAndContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                About(
                  title: 'Project $index',
                  imagePath: 'assets/images/profile.jpg',
                ),
              ],
            );
          }),
    );
  }
}

class About extends StatelessWidget {
  final String title;
  final String imagePath;
  const About({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.black,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Image.asset(
            imagePath,
            height: 200,
            width: 400,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
