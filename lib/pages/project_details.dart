import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/colors.dart';

class ProjectDetailsPage extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectOverview;
  final List<String> features;
  final List<String> techStack;
  final String challenges;
  final List<String> futureScope;
  final Function()? github;
  final List<String> screenshotPaths;

  const ProjectDetailsPage({
    super.key,
    required this.imagePath,
    required this.projectTitle,
    required this.projectOverview,
    required this.features,
    required this.techStack,
    required this.challenges,
    required this.futureScope,
    required this.github,
    required this.screenshotPaths,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Project Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.kBgColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Project Banner
            Center(
              child: Image.asset(
                imagePath,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            // Project Title
            Text(
              projectTitle,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.kWhiteColor,
              ),
            ),
            const SizedBox(height: 10),

            // Project Overview
            _buildSectionTitle("Project Overview"),
            const SizedBox(height: 8),
            Text(
              projectOverview,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // Key Features
            _buildSectionTitle("Key Features"),
            const SizedBox(height: 8),
            ...features.map((feature) => _buildFeatureItem(feature)),
            const SizedBox(height: 20),
            // Tech Stack
            _buildSectionTitle("Tech Stack"),
            const SizedBox(height: 8),
            ...techStack.map((tech) => _buildTechStackItem(tech)),
            const SizedBox(height: 20),
            // Challenges and Learnings
            _buildSectionTitle("Challenges and Learnings"),
            const SizedBox(height: 8),
            Text(
              challenges,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // Future Scope
            _buildSectionTitle("Future Scope"),
            const SizedBox(height: 8),
            ...futureScope.map((scope) => _buildFeatureItem(scope)),
            const SizedBox(height: 30),
            _buildGithubActionButton(github),
            if (screenshotPaths.isNotEmpty) ...[
              const SizedBox(height: 20),
              _buildSectionTitle("Screenshots"),
              const SizedBox(height: 8),
              _buildScreenshots(screenshotPaths, context)
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildScreenshots(List<String> screenshotPaths, BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.width * 0.3,
        // aspectRatio: 16 / 9,
        autoPlay: true,
        enlargeCenterPage: false,
        enableInfiniteScroll: true,
        viewportFraction: 0.33,
      ),
      items: screenshotPaths.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  path,
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildGithubActionButton(Function()? function) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle("View on Github"),
        const SizedBox(height: 8),
        TextButton(
          onPressed: function,
          child: const Text("Github"),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.kWhiteColor,
      ),
    );
  }

  Widget _buildFeatureItem(String feature) {
    return Row(
      children: [
        const Icon(Icons.check_circle, color: Colors.green),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            feature,
          ),
        ),
      ],
    );
  }

  Widget _buildTechStackItem(String tech) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.code, color: Colors.blue),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              tech,
            ),
          ),
        ],
      ),
    );
  }
}
