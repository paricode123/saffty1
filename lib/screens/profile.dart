import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/screens/privacypolicy.dart';
import 'package:saffety/screens/profileupdate.dart';
import 'package:saffety/screens/tearmcondition.dart';

import 'changepassword.dart';
import 'cv.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Map<String, dynamic>> _items = [
    {'icon': Icons.person_add_rounded, 'text': 'Edit Account Details'},
    {'icon': Icons.password, 'text': 'Change Password'},
    {'icon': Icons.update, 'text': 'Update CV or Resume'},
    {'icon': Icons.share, 'text': 'Share App'},
    {'icon': Icons.terminal_sharp, 'text': 'Terms & Conditions'},
    {'icon': Icons.note_add, 'text': 'Privacy Policy'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30.h),
            CircleAvatar(
              radius: 50.h,
              backgroundImage: AssetImage('assets/images/dp.jpg'),
            ),
            SizedBox(height: 20.h),
            Text(
              'Miss Najima',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.h),
            ..._items.map((item) => Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (item['text'] == 'Edit Account Details') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfileUpdate()),
                          );
                        } else if (item['text'] == 'Change Password') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChangePassword()),
                          );
                        } else if (item['text'] == 'Update CV or Resume') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UploadResumePage()),
                          );
                        } else if (item['text'] == 'Share App') {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => SharePage()),
                          // );
                        } else if (item['text'] == 'Terms & Conditions') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TermCondition()),
                          );
                        } else if (item['text'] == 'Privacy Policy') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                          );
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 13.0.h),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                item['icon'],
                                color: Colors.grey.shade900,
                              ),
                              SizedBox(width: 20.w),
                              Text(
                                item['text'],
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.shade800,
                    ),
                  ]),
            )),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );  }
}
