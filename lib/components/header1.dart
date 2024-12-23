import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/responsive.dart';

class Header1 extends StatelessWidget {
  const Header1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Responsive.isMobile(context)
            ? Column(
                children: [
                  _buildImage(context),
                  const SizedBox(height: 20),
                  _buildTextContent(context),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildImage(context),
                  const SizedBox(width: 20),
                  _buildTextContent(context),
                ],
              ),
      ],
    );
  }

  Widget _buildImage(BuildContext context) {
    return SizedBox(
      width: Responsive.isMobile(context)
          ? Responsive.mdqw(context) / 4
          : Responsive.mdqw(context) / 3,
      height: Responsive.isMobile(context)
          ? Responsive.mdqw(context) / 4
          : Responsive.mdqw(context) / 3,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipOval(
          child: Image.asset(
            'assets/images/kasun.jpg',
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildTextContent(BuildContext context) {
    return SizedBox(
      width: Responsive.isMobile(context)
          ? Responsive.mdqw(context) * 0.9
          : Responsive.mdqw(context) / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, I\'m Edirisooriya Mudiyanselage Kasun Tharanga Dilshan',
            style: TextStyle(
                fontSize: Responsive.isMobile(context) ? 24 : 32,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
                fontSize: Responsive.isMobile(context) ? 18 : 24,
                color: Colors.grey),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
