import 'package:flutter/material.dart';
import 'package:kasun_tharanga/pages/project_details.dart';
import 'package:kasun_tharanga/utils/util_untions.dart';

class PortfolioProject extends StatelessWidget {
  const PortfolioProject({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectDetailsPage(
      screenshotPaths: const [
        "assets/project_images/portfolio.jpg",
        "assets/project_images/portfolio1.jpg",
        "assets/project_images/portfolio2.jpg",
        "assets/project_images/portfolio3.jpg",
        "assets/project_images/portfolio4.jpg"
      ],
      imagePath: 'assets/images/my_portfolio_site.png',
      projectTitle: 'Create Responsive Portfolio Site using Flutter Web',
      projectOverview:
          'A responsive portfolio site built with Flutter Web, hosted on GitHub Pages with a custom domain "kasuntharanga.com". The site adapts to various screen sizes using MediaQuery for a seamless experience on both mobile and desktop devices.',
      features: const [
        "🌐 Fully responsive design using MediaQuery",
        "📱 Mobile-friendly navigation with a custom drawer",
        "🖥️ Desktop version with advanced UI components",
        "🚀 Hosted on GitHub Pages with a custom domain"
      ],
      techStack: const [
        "Flutter Web",
        "Dart",
        "GitHub Pages",
        "Lottie Animations",
        "MediaQuery",
        "AppBar and Drawer Widgets",
      ],
      challenges:
          '• Ensuring smooth performance across devices.\n• Managing dynamic layout changes with MediaQuery.\n• Handling browser compatibility issues.',
      futureScope: const [
        "Improve SEO performance for better visibility.",
        "Add a blog section to share development updates.",
        "Incorporate interactive animations for a more engaging user experience."
      ],
      github: () {
        UtillFunctions().launchURL("https://github.com/kasun0403/my_portfolio");
      },
    );
  }
}
