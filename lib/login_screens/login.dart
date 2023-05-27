import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/login_screens/register.dart';

import '../screens/home.dart';
import '../screens/main_page.dart';
import 'forgot.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              Text(
                'Welcome To',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D0D26),
                ),
              ),
              SizedBox(height: 20.h),
              Image.asset(
                'assets/images/splash.png', // replace with your image path
                width: 202.w,
                height: 134.h,
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5.w,),
                        Icon(Icons.phone),
                        VerticalDivider(
                          width: 20.w,
                          thickness: 1.w,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5.w,),
                        Icon(Icons.lock),
                        VerticalDivider(
                          width: 20.w,
                          thickness: 1.w,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 40.h),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_Page()),
                  );
                },
                child: Container(
                  width: 327.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Color(0xFF0058AC),
                  ),
                  child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 16.sp),)),
                ),
              ),
              SizedBox(height: 20.h),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerificationPage()),
                  );
                },
                child: Text('Forgot password?',style: TextStyle(
                  color: Color(0xFF0058AC),
                  fontSize: 15.sp,
                ),),
              ),
              SizedBox(height: 10.h),
              TextButton(
                onPressed: () {
                  // TODO: navigate to sign up screen
                },
                child: Text('Don\'t have an account?',style: TextStyle(
                  color: Color(0xFF494A50),
                  fontSize: 16.sp,
                ),),
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationScreen()),
                  );
                },
                child: Container(
                  width: 327.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                      color: Color(0xFF027BEE),
                  ),
                  child: Center(child: Text('Register Now',style: TextStyle(color: Colors.white,fontSize: 16.sp),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
