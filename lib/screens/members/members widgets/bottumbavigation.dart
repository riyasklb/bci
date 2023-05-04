import 'package:bci/constands/constands.dart';
import 'package:bci/screens/members/settings_screen/settings_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../../../views/home_screen/wallet_screen.dart';

import '../home_screen/Members_home_screen.dart';
import '../members_search_screen/members_search_screen.dart';

class HelloConvexAppBar extends StatefulWidget {
  @override
  State<HelloConvexAppBar> createState() => _HelloConvexAppBarState();
}

class _HelloConvexAppBarState extends State<HelloConvexAppBar> {
  final List1 = [
    Home_screen1(),
    Members_search_screen(
      title: 'Search Result',
      items: ['Item 1', 'Item 2', 'Item 3', 'Item 4'],
    ),
    // WalletScreen(),
    p4(),
    SettingScreen()
  ];

  int selectedpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: List1[selectedpage],
      bottomNavigationBar: ConvexAppBar(
          //  ,
          backgroundColor: kblue,
          color: kwhite,
          style: TabStyle.reactCircle,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.search, title: 'Notification'),
            TabItem(icon: Icons.wallet, title: 'Wallet'),
            TabItem(icon: Icons.book_online, title: 'Booking'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ],
          initialActiveIndex: selectedpage,
          onTap: (int index) {
            setState(() {
              selectedpage = index;
            });
          }),
    );
  }
}

class p1 extends StatelessWidget {
  const p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class p2 extends StatelessWidget {
  const p2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class p3 extends StatelessWidget {
  const p3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class p4 extends StatelessWidget {
  const p4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class p5 extends StatelessWidget {
  const p5({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
