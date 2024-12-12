import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/weather_app_banner.png"),
            const SizedBox(height: 16),
            const Text(
              "Weather Application",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "A Flutter app that provides real-time weather updates using OpenWeatherMap API.",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            const Text(
              "Key Features:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const BulletPoint(
                text: "Fetches weather by city name or current location."),
            const BulletPoint(text: "Supports light and dark themes."),
            const BulletPoint(text: "Persistent theme preferences."),
            const BulletPoint(text: "Lottie animations for enhanced UI."),
            const SizedBox(height: 16),
            const Text(
              "Technical Details:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const ExpansionTile(
              title: Text("Packages Used"),
              children: [
                Text(
                  "• google_fonts\n• http\n• flutter_dotenv\n• geolocator\n• geocoding\n• provider\n• shared_preferences\n• lottie",
                ),
              ],
            ),
            const ExpansionTile(
              title: Text("Secure API Key Management"),
              children: [
                Text(
                    "API keys are managed securely using the flutter_dotenv package."),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add live demo or GitHub link
              },
              child: const Text("View on GitHub"),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.check, color: Colors.green),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
