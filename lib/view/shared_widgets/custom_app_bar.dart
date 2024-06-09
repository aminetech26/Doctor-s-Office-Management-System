import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container customAppBar(
    {required String titleText, // Required argument
    required Icon firstIcon,
    required Function firstFunction, // Required argument
    Icon? secondIcon,
    Function? secondFunction,
    Icon? thirdIcon,
    Function? thirdFunction,
    required double width}) {
  return Container(
    margin: const EdgeInsets.only(top: 16.0),
    padding: const EdgeInsets.only(left: 8.0),
    height: kToolbarHeight,
    color: const Color(0xFFFFFFFF),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 48.w,
          width: 48.h,
          child: MaterialButton(onPressed: () { firstFunction; },
          child: firstIcon),
        ),
        SizedBox(width: width/60,),
        Text(
          titleText,
          style: TextStyle(
            color: const Color(0xFF09101D),
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
          ),
        ),
        ((secondIcon != null) && (thirdIcon != null))
            ? Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: width/7,),
                  MaterialButton(
                      onPressed: () {
                        secondFunction;
                      },
                      child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE4ECFD),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: secondIcon)),
                    MaterialButton(
                    onPressed: () {
                      thirdFunction;
                    },
                    child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE4ECFD),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: thirdIcon),
                  )
                ],
              )
            : ((secondIcon != null)
                ? MaterialButton(
                    onPressed: () {
                      secondFunction;
                    },
                    child: Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE4ECFD),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: secondIcon))
                : const SizedBox.shrink()),
      ],
    ),
  );
}
