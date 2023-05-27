import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/screens/main_page.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 130.h),
                Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0D0D26),
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  'Enter your new password and confirm the new password to change password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 120.h),
                MyTextField(
                  icon: Icons.lock,
                  hint: 'Password',
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
                SizedBox(height: 20.h),
                MyTextField(
                  icon: Icons.lock,
                  hint: 'Confirm Password',
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
                SizedBox(height: 150.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_Page()),
                    );
                  },
                  child: Container(
                    width: 327.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                      color: Color(0xFF0058AC),
                    ),
                    child: Center(
                      child: Text(
                        'Update',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  final IconData icon;
  final String hint;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final OutlineInputBorder border;

  const MyTextField({
    Key? key,
    required this.icon,
    required this.hint,
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    this.border = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: widget.margin,
        child: TextFormField(
        decoration: InputDecoration(
        border: widget.border,
        hintText: widget.hint,
        prefixIcon: Icon(widget.icon),
    suffixIcon: widget.icon == Icons.lock
    ? IconButton(
    icon: Icon(
    _obscureText ? Icons.visibility : Icons.visibility_off),
    onPressed: () {
    setState(() {
    _obscureText = !_obscureText;
    });
    },
    )
        : null,
    ),
    obscureText: widget.icon == Icons.lock ? _obscureText : false,
        )
    );
  }
}