import 'package:flutter/material.dart';

class MainState extends ChangeNotifier {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  int get currentIndex => _currentIndex;
  set currentIndex(int value) {
    _currentIndex = value;
    _pageController.animateToPage(
      value,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    notifyListeners();
  }

  void setOnlyCurrentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  PageController get pageController => _pageController;
}
