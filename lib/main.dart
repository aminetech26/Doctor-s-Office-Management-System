import 'package:doctor_office_management_system/view-model/main_state.dart';
import 'package:doctor_office_management_system/view/login_signup_choice_view.dart';
import 'package:doctor_office_management_system/view/main_page.dart';
import 'package:doctor_office_management_system/view/onboarding_view.dart';
import 'package:doctor_office_management_system/view/sign_up_view.dart';
import 'package:doctor_office_management_system/view/sing_in_view.dart';
import 'package:doctor_office_management_system/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainState>(create: (context) => MainState()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_ , child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => const OnboardingView(),
              '/splash_screen':(context)=> const SplashScreen(),
              '/login_or_signup':(context)=> const LoginOrSignupView(),
              '/sign_in':(context)=> const SignInView(),
              '/sign_up':(context)=> const SignUpView(),
              '/main_page':(context)=> const MainPage(),
            },
          );
        },
      ),
    );
  }
}