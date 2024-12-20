import 'package:flutter/material.dart';
import 'package:kasun_tharanga/pages/project_details.dart';

class FirebaseAuthProject extends StatelessWidget {
  const FirebaseAuthProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProjectDetailsPage(
      imagePath: 'assets/images/authentication_app.png',
      projectTitle: 'Advanced Firebase Authentication with Flutter',
      projectOverview:
          'A comprehensive authentication system built with Firebase and Flutter, offering seamless sign-in options, including Email & Password, Google Sign-In, and OTP-based phone authentication. Designed with user experience and security at its core, this project is a complete solution for modern authentication needs.',
      features: [
        "🔐 Email & Password authentication with real-time validation",
        "🌍 Google Sign-In integration for faster access",
        "📱 OTP-based phone number login for enhanced security",
        "🔄 Forgot password functionality with email reset",
        "⚠️ User-friendly error handling and feedback",
        "✨ Customizable UI with Google Fonts for a polished design",
        "📲 Adaptive layout ensuring seamless performance across devices"
      ],
      techStack: [
        "Firebase Core & Authentication",
        "Google Sign-In API",
        "Pinput for OTP handling",
        "GetX for state management",
        "Google Fonts for modern typography",
        "Flutter Material Widgets"
      ],
      challenges:
          '• Integrating and managing multiple authentication methods simultaneously.\n• Handling OTP verification with dynamic PIN input.\n• Creating reusable widgets for consistent design across various screens.\n• Debugging edge cases in sign-in flows and session management.',
      futureScope: [
        "Add multi-factor authentication for enhanced security.",
        "Support account linking for multiple sign-in methods.",
        "Incorporate dark mode for better user experience.",
        "Implement user profile management with avatar uploads."
      ],
    );
  }
}