import 'package:flutter/material.dart';
import 'package:kasun_tharanga/components/footer.dart';
import 'package:kasun_tharanga/components/header1.dart';
import 'package:kasun_tharanga/components/home_page_actions.dart';
import 'package:kasun_tharanga/components/more_about_me.dart';
import 'package:kasun_tharanga/components/my_drawer.dart';
import 'package:kasun_tharanga/components/recent_projects.dart';
import 'package:kasun_tharanga/components/social_icons_bar.dart';
import 'package:kasun_tharanga/components/top_skills.dart';
import 'package:kasun_tharanga/pages/contact_page.dart';
import 'package:kasun_tharanga/utils/colors.dart';
import 'package:kasun_tharanga/utils/responsive.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'KASUN THARANGA',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.kWhiteColor,
            letterSpacing: 1.5,
          ),
        ),
        toolbarHeight: 60,
        elevation: 10,
        backgroundColor: AppColors.kBgColor,
        actions: [
          Responsive.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: AppColors.kWhiteColor,
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : HomePageActions(sc: myScrollController),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? MyDrawer(sc: myScrollController)
          : null,
      floatingActionButton: FloatingActionButton(
        mini: Responsive.isMobile(context) ? true : false,
        onPressed: () {
          myScrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeIn,
          );
        },
        backgroundColor: AppColors.kPrimaryColor,
        child: Lottie.asset('assets/lottie/up_arrow.json'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: myScrollController,
              child: const Column(
                children: [
                  SizedBox(height: 20),
                  Header1(),
                  MoreAboutMe(),
                  SizedBox(height: 50),
                  TopSkills(),
                  SizedBox(height: 50),
                  RecentProjects(),
                  SizedBox(height: 50),
                  ContactSection(),
                  SizedBox(height: 50),
                  Footer(),
                  // SizedBox(height: 20),
                ],
              ),
            ),
            const SocialIconsBar(),
          ],
        ),
      ),
    );
  }
}
