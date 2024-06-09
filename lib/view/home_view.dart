import 'package:doctor_office_management_system/view/shared_widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBar(
              titleText: 'Doctorek',
              firstIcon: const Icon(Icons.adobe_rounded,color: Color(0xFF2972FE),size: 48,),
              secondIcon: const Icon(Icons.notifications,color: Color(0xFF2972FE),),
              thirdIcon: const Icon(Icons.favorite,color: Color(0xFF2972FE),),
              firstFunction: (){},
              width: width),
          SizedBox(height: height/20,),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(text: 'Find ',style: TextStyle(
                color: const Color(0xFF09101D),
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w700,
                fontSize: 28.sp,
              ),
              ),
              TextSpan(text: 'your doctor',style: TextStyle(
              color: const Color(0xFFA0A4A8),
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w300,
              fontSize: 28.sp,
            )),]),
          )),
          SizedBox(height: height/40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SearchBar(
              backgroundColor: WidgetStateProperty.all<Color>(const Color(0xFFEBEEF2)),
              elevation: WidgetStateProperty.all<double>(0.0), // Replace 8.0 with your desired elevation value
              padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(horizontal: 16.0)),
              hintText: 'Search',
              trailing: const [
                Icon(Icons.search),
                // Other trailing widget (e.g., IconButton for filtering)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
