import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_office_management_system/model/image_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List<ImageDetails> imgList = [
  ImageDetails('image_assets/carousel_image_1.png', const Color(0xFF93B8FE), 'Thousands of doctors', 'You can easily contact with a thousands of doctors and contact for youe needs'),
  ImageDetails('image_assets/carousel_image_2.png', const Color(0xFFEDA1AB), 'Chat with doctors', 'You can easily contact with a thousands of doctors and contact for youe needs'),
  ImageDetails('image_assets/carousel_image_3.png', const Color(0xFF00DABE), 'Live talk with doctor', 'You can easily contact with a thousands of doctors and contact for youe needs')
];



class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 0.65,
                viewportFraction: 1,
                initialPage: 1,
                autoPlay: true,
                pageSnapping: true,
                onPageChanged: (index,reason){
                 setState(() {
                   activeIndex = index;
                 });
              }

            ),
            items: imgList.map((imageDetails) {
                  return Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.bottomCenter,
                        height: 350.h,
                          color: imageDetails.color,
                          child: Image.asset(imageDetails.imagePath,alignment: Alignment.center,)),
                      SizedBox(height: height/20,),
                      Text(imageDetails.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF2972FE),
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.sp,
                        ),),
                      SizedBox(height: height/60,),
                      Text(imageDetails.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF404345),
                          fontFamily: 'Source Sans Pro',
                          fontSize: 13.sp,
                        ),),
                      SizedBox(height: height/30,),
                      AnimatedSmoothIndicator(
                          activeIndex: activeIndex,
                          count: imgList.length,
                          effect:  const SlideEffect(
                            spacing:  8.0,
                            radius:  4.0,
                            dotWidth:  8.0,
                            dotHeight: 8.0,
                            dotColor:  Color(0xFFD9D9D9),
                            activeDotColor:  Color(0xFF2972FE)
                        ),

                      )
                    ],
                  );
            }).toList(),

          ),
          SizedBox(height: height/30,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            width: width,
            height: 35.h,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/splash_screen');
              },
              style: ButtonStyle(
                side: WidgetStateProperty.all(const BorderSide(color: Color(0xFF2972FE))), // Change border color
              ),
              child: Text('Skip',textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF2972FE),
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
        ],
      ),
    ));
  }
}
