import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/login_screens/login.dart';
import 'package:saffety/login_screens/otp.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 50.h),
              Container(
                height: 95.h,
                width: 311.w,
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Enter your email or phone number, we will send \n your verification code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Padding(
                padding:  EdgeInsets.all(20.sp),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    hintText: 'abcd.text@gmail.com',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpPage()),
                  );
                },
                child: Container(
                  width: 327.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Color(0xFF0058AC),
                  ),
                  child: Center(child: Text('Send Code',style: TextStyle(color: Colors.white,fontSize: 16.sp),)),
                ),
              ),
              SizedBox(height: 150.h),
            ],
          ),
        ),
      ),
    );
  }
}
