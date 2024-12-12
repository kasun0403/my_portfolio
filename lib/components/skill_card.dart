import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/responsive.dart';

class SkillCard extends StatelessWidget {
  final String url;
  final String label;
  const SkillCard({super.key, required this.url, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFC4ACA1),
                blurRadius: 6,
                spreadRadius: 4,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: SizedBox(
            height: !Responsive.isMobile(context)
                ? Responsive.mdqw(context) / 8
                : 80,
            width: !Responsive.isMobile(context)
                ? Responsive.mdqw(context) / 8
                : 80,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network(url, fit: BoxFit.contain),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
