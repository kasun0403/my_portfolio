import 'package:url_launcher/url_launcher.dart';

class UtillFunctions {
  void launchURL(String url) async {
    // Code to open the URL (requires url_launcher package)
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
