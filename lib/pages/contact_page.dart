import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 20 : 80,
        vertical: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Get in Touch',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Feel free to reach out to me for collaborations, projects, or any inquiries. I would love to hear from you!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Responsive.isMobile(context)
              ? Column(
                  children: [
                    _buildContactInfo(
                      Icons.email,
                      'Email',
                      'ktharanga1031@gmail.com',
                      'mailto:ktharanga1031@gmail.com',
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      Icons.phone,
                      'Phone',
                      '+81 90-4182-4139',
                      'tel:+819041824139',
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                        Icons.location_on, 'Location', 'Kyoto, Japan', ""),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildContactInfo(
                      Icons.email,
                      'Email',
                      'ktharanga1031@gmail.com',
                      'mailto:ktharanga1031@gmail.com',
                    ),
                    _buildContactInfo(
                      Icons.phone,
                      'Phone',
                      '+81 90-4182-4139',
                      'tel:+819041824139',
                    ),
                    _buildContactInfo(
                        Icons.location_on, 'Location', 'Kyoto, Japan', ""),
                  ],
                ),
          // const SizedBox(height: 40),
          // const _ContactForm(),
        ],
      ),
    );
  }

  Widget _buildContactInfo(
      IconData icon, String title, String value, String link) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunchUrl(Uri.parse(link))) {
          await launchUrl(Uri.parse(link));
        } else {
          throw 'Could not launch $link';
        }
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.blueAccent,
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ContactForm extends StatelessWidget {
  const _ContactForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Send Me a Message',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Your Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 15),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Your Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 15),
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: 'Your Message',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Handle form submission
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          child: const Text(
            'Send Message',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
