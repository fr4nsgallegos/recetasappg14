import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetasappg14/examples/dropdown_page.dart';
import 'package:recetasappg14/examples/scroll_page.dart';
import 'package:recetasappg14/pages/home_page.dart';

class HomeCurvedNavigationBar extends StatefulWidget {
  @override
  State<HomeCurvedNavigationBar> createState() =>
      _HomeCurvedNavigationBarState();
}

class _HomeCurvedNavigationBarState extends State<HomeCurvedNavigationBar> {
  int _activePageIndex = 0;

  final pageController = PageController();

  List<Widget> _screens = [HomePage(), DropdownPage(), ScrollPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.red,
        backgroundColor: Colors.cyan,
        buttonBackgroundColor: Colors.amber,
        items: [
          Icon(Icons.home),
          Icon(Icons.download),
          Icon(Icons.arrow_drop_down_circle_outlined),
        ],
        index: _activePageIndex,
        onTap: (index) {
          pageController.animateToPage(
            index,
            duration: Duration(seconds: 1),
            curve: Curves.decelerate,
          );
        },
      ),
      body: PageView(
        onPageChanged: (index) {
          _activePageIndex = index;
          setState(() {});
        },
        controller: pageController,
        children: _screens,
      ),
    );
  }
}
