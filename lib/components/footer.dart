import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Divider(
            thickness: 1,
            color: Colors.grey, // Subtle divider for separation
          ),
          const SizedBox(height: 10),
          Text(
            '© 2024 Kasun Tharanga. All Rights Reserved.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Built with ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 16,
              ),
              const Text(
                ' using Flutter by ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to personal profile or portfolio
                },
                child: const Text(
                  'Kasun Tharanga',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kblue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
