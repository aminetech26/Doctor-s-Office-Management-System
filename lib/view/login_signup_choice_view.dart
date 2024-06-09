import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginOrSignupView extends StatelessWidget {
  const LoginOrSignupView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(flex: 3,child: Image.asset(alignment: Alignment.center,'image_assets/second_color_logo.png')),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            width: width,
            height: 35.h,
            child: OutlinedButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/sign_up');
              },
              style: ButtonStyle(
                backgroundColor:WidgetStateProperty.all(const Color(0xFF2972FE)),
                side: WidgetStateProperty.all(const BorderSide(color: Color(0xFF2972FE))), // Change border color
              ),
              child: Text('Sign Up',textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontFamily: 'Source Sans Pro',
                  fontSize: 13.sp,
                ),),
            ),
          ),
          SizedBox(height: height/60,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            width: width,
            height: 35.h,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign_in');
              },
              style: ButtonStyle(
                side: WidgetStateProperty.all(const BorderSide(color: Color(0xFF2972FE))), // Change border color
              ),
              child: Text('Sign In',textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF2972FE),
                  fontFamily: 'Source Sans Pro',
                  fontSize: 13.sp,
                ),),
            ),
          ),
          SizedBox(height: height/20,),
        ],
      ),
    ));
  }
}
