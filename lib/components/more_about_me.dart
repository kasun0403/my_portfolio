import 'package:flutter/material.dart';
import 'package:kasun_tharanga/utils/responsive.dart';
import 'package:photo_view/photo_view.dart';

class MoreAboutMe extends StatelessWidget {
  const MoreAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isMobile(context) ? 40 : 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Center(
              child: Text(
                'About Me',
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 20 : 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Text(
            'Hello! I\'m Kasun Tharanga, a dedicated and innovative Flutter developer with over a year of professional experience in crafting seamless mobile applications. Currently pursuing a Master\'s degree in Information Technology at the Kyoto College of Graduate Studies for Informatics (KCGI), Japan, I am committed to advancing my skills in cutting-edge technologies.',
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.grey[400],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 15),
          Text(
            'I specialize in creating user-centric mobile applications using Flutter and have successfully contributed to various projects. My expertise includes working with REST APIs, Firebase, ensuring high-quality and performant applications.',
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.grey[400],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 15),
          Text(
            'Beyond my technical skills, I am a quick learner, a team player, and passionate about solving real-world problems through technology. I aim to contribute meaningfully to the IT industry while continuously growing as a developer and a professional.',
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.grey[400],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Expanded(
                            child: PhotoView(
                              imageProvider: const AssetImage(
                                  'assets/images/kasun_tharanga.png'),
                              minScale: PhotoViewComputedScale.contained,
                              maxScale: PhotoViewComputedScale.covered,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back)),
                        ],
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                'View Resume',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
