import 'package:doctor_office_management_system/view-model/signin_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    SigninViewmodel signinViewmodel = SigninViewmodel();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // Form key
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height/20,),
              Container(alignment: Alignment.center,child: Image.asset(height: 120.h,width: 120.w,alignment: Alignment.center,'image_assets/second_color_logo.png')),
              SizedBox(height: height/60,),
              Text('Sign In',
              textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(height: height/20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Form(
                 key: formKey, // Assign the form key
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Email',textAlign: TextAlign.start,style:
                    TextStyle(
                      color: const Color(0xFF231F20),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15.sp,                ),),
                  ),
                  SizedBox(height: height/100,),
                  TextFormField(
                    validator: (value) => signinViewmodel.validateInput(value!, 'Email'), // Use validateInput function
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 20.0),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: const Color(0xFFDADADA),
                          fontFamily: 'Source Sans Pro',
                          fontSize: 15.sp,
                        ),
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32.0)),borderSide: BorderSide(width: 2.5,color: Color(0xFFDADADA))),
                      focusedBorder:const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32.0)),borderSide: BorderSide(width: 2.5,color: Color(0xFF2972FE)))
                    ),
                    onChanged: (value) => setState(() {
                    }),
                  ),
                  SizedBox(height: height/50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('Password',textAlign: TextAlign.start,style:
                    TextStyle(
                      color: const Color(0xFF231F20),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15.sp,                ),),
                  ),
                  SizedBox(height: height/100,),
                  TextFormField(
                    validator: (value) {
                      return signinViewmodel.validateInput(value!, 'Password');},
                      decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20.0),
                      suffixIcon: const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(Icons.remove_red_eye_rounded),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                      color: const Color(0xFFDADADA),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 15.sp,
                      ),
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32.0)),borderSide: BorderSide(width: 2.5,color: Color(0xFFDADADA))),
                        focusedBorder:const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32.0)),borderSide: BorderSide(width: 2.5,color: Color(0xFF2972FE)))
                    ),
                    onChanged: (value) => setState(() {

                    }),
                  ),
                  SizedBox(height: height/20,),
                ],
                          ),
                        ),
              ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32.0),
            width: width,
            height: 35.h,
            child: OutlinedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                  }else{
                    //for test
                    Navigator.pushNamed(context, '/main_page');
                  }
                },
              style: ButtonStyle(
                backgroundColor:WidgetStateProperty.all(const Color(0xFF2972FE)),
                side: WidgetStateProperty.all(const BorderSide(color: Color(0xFF2972FE))), // Change border color
              ),
              child: Text('Sign In',textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                ),),
            ),
          ),
              SizedBox(height: height/40,),
              TextButton(onPressed: (){

              },child:Text('Forget the password ?',textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF2972FE),
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 13.sp,
                ),)),
              SizedBox(height: height/80,),
              Text('or continue with',textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF404345),
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 13.sp,
                ),),
              SizedBox(height: height/30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(onPressed: (){},
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(const BorderSide(
                        color: Color(0xFFDADADA),  // Set desired border color
                        width: 2.0,         // Set desired border width (optional)
                      )),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Image.asset('image_assets/facebook_logo.png'),
                        SizedBox(width: width/50,),
                        Text('Facebook',style: TextStyle(
                          color: const Color(0xFF000000),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),)
                      ],
                    ),
                  ),
                  ),
                  OutlinedButton(onPressed: (){},
                      style: ButtonStyle(
                        side: WidgetStateProperty.all(const BorderSide(
                          color: Color(0xFFDADADA),  // Set desired border color
                          width: 2.0,         // Set desired border width (optional)
                        )),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('image_assets/google_icon.png'),
                          SizedBox(width: width/50,),
                          Text('Google',style: TextStyle(
                            color: const Color(0xFF000000),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: height/50,),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Text('Don’t have an account ?',style: TextStyle(
                  color: const Color(0xFF979797),
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),),
                TextButton(onPressed:(){

                }, child: Text(
                  'Sign Up',style: TextStyle(
                  color: const Color(0xFF2972FE),
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
                ))
              ],)
            ],
          ),
        ),

      ),
    );
  }
}
