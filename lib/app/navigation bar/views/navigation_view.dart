import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Import the Google Nav Bar package
import 'package:habitats_24_mobile/app/home/home_view/home_view.dart';
import 'package:habitats_24_mobile/app/settings/settings_view/settings_view.dart';
import 'package:habitats_24_mobile/styles/colors.dart';
import 'package:stacked/stacked.dart';

import '../view_models/navigation_view_model.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  final List<Widget> _pages = [
    const HomeView(), // Placeholder for HomeView
    const SettingsView(), // Placeholder for JournalView
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavigationMenuViewModel>.reactive(
      viewModelBuilder: () => NavigationMenuViewModel(),
      builder:
          (context, model, child) => Scaffold(
            resizeToAvoidBottomInset: false,
            body: IndexedStack(index: model.selectedIndex, children: _pages),
            bottomNavigationBar: Container(
              color: backgroundColor, // Set the color of the container
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: GNav(
                  backgroundColor: containerColor, // Background color of GNav
                  color: Colors.white, // Icon color when not selected
                  activeColor: Colors.white, // Icon color when selected
                  iconSize: 25,
                  gap: 8,

                  tabs: [
                    GButton(
                      icon: Icons.circle, // Set an icon (invisible)
                      // Make the icon invisible
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/home.png', // Path to your image asset
                            width: 24,
                            height: 24,
                            color:
                                model.selectedIndex == 0
                                    ? Colors.white
                                    : Colors.white70,
                          ),
                          const SizedBox(
                            width: 4,
                          ), // Space between image and text
                        ],
                      ),
                      text: 'Home', // Text property should still be set
                      textStyle: GoogleFonts.poppins(color: Colors.white),
                      iconColor:
                          model.selectedIndex == 0
                              ? backgroundColor
                              : Colors.white,
                      onPressed: () {
                        model.updateIndex(0);
                      },
                    ),
                    GButton(
                      icon: Icons.circle, // Set an icon (invisible)
                      // Make the icon invisible
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/user.png', // Path to your image asset
                            width: 24,
                            height: 24,
                            color:
                                model.selectedIndex == 1
                                    ? Colors.white
                                    : Colors.white70,
                          ),
                          const SizedBox(
                            width: 4,
                          ), // Space between image and text
                        ],
                      ),
                      text: 'Settings', // Text property should still be set
                      textStyle: GoogleFonts.poppins(color: Colors.white),
                      iconColor:
                          model.selectedIndex == 1
                              ? backgroundColor
                              : Colors.white,
                      onPressed: () {
                        model.updateIndex(1);
                      },
                    ),
                  ],
                  selectedIndex: model.selectedIndex,
                  onTabChange: (index) {
                    model.updateIndex(index);
                  },
                ),
              ),
            ),
          ),
    );
  }
}
