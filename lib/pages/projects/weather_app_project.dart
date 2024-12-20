import 'package:flutter/material.dart';
import 'package:kasun_tharanga/pages/project_details.dart';

class WeatherAppProject extends StatelessWidget {
  const WeatherAppProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProjectDetailsPage(
      imagePath: 'assets/images/simple_weather_app.png',
      projectTitle: 'Simple Weather Application 🌦️',
      projectOverview:
          'A Flutter-based mobile application that delivers real-time weather updates for any city or your current location. This app combines seamless user experience, robust state management, and precise API integrations to fetch and display weather data effortlessly.',
      features: [
        '🌍 Weather based on GPS location',
        '🔍 Search weather by city name',
        '🎨 Light and Dark themes with persistence',
        '🔑 Secure API integration using dotenv',
        '💡 Lottie animations for weather themes'
      ],
      techStack: [
        'Language: Dart',
        'Packages: http, provider, shared_preferences',
        'API: OpenWeather API',
        'Utilities: flutter_dotenv, geolocator, geocoding'
      ],
      challenges:
          '• Implemented robust error handling for API failures.\n• Ensured smooth theme transitions for a polished UI.\n• Integrated multiple weather conditions with corresponding animations.',
      futureScope: [
        'Add multi-day weather forecasts',
        'Expand functionality to include weather alerts'
      ],
    );
  }
}
