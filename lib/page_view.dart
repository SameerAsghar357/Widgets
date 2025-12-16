import 'package:flutter/material.dart';
import 'package:widgets/drawer/homescreen.dart';
import 'package:widgets/drawer/profilescreen.dart';
import 'package:widgets/drawer/settingscreen.dart';
import 'package:widgets/drawer/themescreen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PageView Example',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Colors.blue.shade500,
        actions: [
          /// 1 way with animate to specific page
          // Container(
          //   alignment: Alignment.center,
          //   margin: EdgeInsets.only(right: 10),
          //   child: Row(
          //     children: [
          //       IconButton(
          //         onPressed: () {
          //           controller.animateToPage(
          //             1,
          //             duration: Duration(milliseconds: 230),
          //             curve: Curves.bounceInOut,
          //           );
          //         },
          //         icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          //       ),
          //       // const SizedBox(width: 10),
          //       IconButton(
          //         onPressed: () {
          //           controller.animateToPage(
          //             2,
          //             duration: Duration(milliseconds: 230),
          //             curve: Curves.bounceInOut,
          //           );
          //         },
          //         icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
          //       ),
          //     ],
          //   ),
          // ),
          /// 2nd way animate to next or previous page more common and reliable
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    controller.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                // const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),

      /// 1st simple way
      // body: PageView(
      //   controller: controller,
      //   children: [
      //     Container(
      //       color: Colors.redAccent,
      //       child: const Center(
      //         child: Text(
      //           "Page 1",
      //           style: TextStyle(color: Colors.white, fontSize: 40),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //       child: const Center(
      //         child: Text(
      //           "Page 2",
      //           style: TextStyle(color: Colors.white, fontSize: 40),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       color: Colors.blueGrey,
      //       child: const Center(
      //         child: Text(
      //           "Page 3",
      //           style: TextStyle(color: Colors.white, fontSize: 40),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      /// 2nd way with actuall pages or complete custom widgets like screens
      body: PageView(
        controller: controller,
        children: [
          const HomeScreen(),
          const ProfileScreen(),
          const SettingScreen(),
          const ThemeScreen(),
        ],
      ),
    );
  }
}
