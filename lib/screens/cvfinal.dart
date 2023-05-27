import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/screens/main_page.dart';

class CvFinal extends StatefulWidget {
  const CvFinal({Key? key}) : super(key: key);

  @override
  State<CvFinal> createState() => _CvFinalState();
}

class _CvFinalState extends State<CvFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Upload Resume or CV',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Upload your CV or resume and use it when you apply for jobs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 50.0.h),
                    Image.asset(
                      'assets/images/pdf.png',
                      height: 100.0.h,
                      width: 100.0.w,
                    ),
                    SizedBox(height: 60.0.h),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 100.0.h),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home_Page()),
              );
            },
            child: Container(
              width: 327.0.w,
              height: 56.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0.r),
                color: Color(0xFF0058AC),
              ),
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0.sp,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}