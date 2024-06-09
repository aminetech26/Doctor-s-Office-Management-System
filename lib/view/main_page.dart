import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:doctor_office_management_system/view-model/main_state.dart';
import 'package:doctor_office_management_system/view/appointment_view.dart';
import 'package:doctor_office_management_system/view/history_view.dart';
import 'package:doctor_office_management_system/view/home_view.dart';
import 'package:doctor_office_management_system/view/profile_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainState>(
      builder: (context, state, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFF5F6F7),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: state.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (index) {
                      state.setOnlyCurrentIndex(index);
                    },
                    children: const [
                      HomeView(),
                      AppointmentView(),
                      HistoryView(),
                      ProfileView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GNav(
                gap: 8,
                activeColor: const Color(0xFF4485FD),
                iconSize: 24,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: const Color(0xFFE4ECFE),
                color: const Color(0xFF2972FE),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.calendar_month,
                    text: '',
                  ),
                  GButton(
                    icon: Icons.list_alt,
                    text: '',
                  ),
                  GButton(
                    icon: Icons.supervised_user_circle_outlined,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: state.currentIndex,
                onTabChange: (index) {
                  state.currentIndex = index;
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
