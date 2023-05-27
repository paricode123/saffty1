import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/login_screens/login.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}
class _OtpPageState extends State<OtpPage> {
  final List<TextEditingController> _controllers =
  List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _handleTextChanged(int index, String value) {
    if (value.isNotEmpty && index < _controllers.length - 1) {
      FocusScope.of(context).nextFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 50.0.h),
              Container(
                height: 162.0.h,
                width: 311.0.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Full name',
                      style: TextStyle(
                        fontSize: 20.0.sp,
                        color: Color(0xFF008200),
                      ),
                    ),
                    Text(
                      'Verify code',
                      style: TextStyle(
                        fontSize: 20.0.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Enter your verification code from your email or \n phone number that you have sent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                      (index) => Container(
                    width: 60.0.w,
                    height: 60.0.h,
                    margin: EdgeInsets.symmetric(horizontal: 8.0.w),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                    child: TextField(
                      controller: _controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      onChanged: (value) => _handleTextChanged(index, value),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
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
                        'Verify',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0.sp,
                        ),
                      )),
                ),
              ),
              SizedBox(height: 150.0.h),
            ],
          ),
        ),
      ),
    );
  }
}