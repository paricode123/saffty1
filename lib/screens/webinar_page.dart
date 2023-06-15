import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class PageWeb extends StatefulWidget {
  const PageWeb({Key? key}) : super(key: key);

  @override
  State<PageWeb> createState() => _PageWebState();
}

class _PageWebState extends State<PageWeb> {
  void _openWebinarLink() async {
    const url = 'https://meet.google.com/hou-nwqj-oui';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                'How To Create a Successful Safety Eyewear Program',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'DATE: APR 13,2023',
                      style: TextStyle(
                        fontSize: 16.h,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'TIME: 2:00PM',
                      style: TextStyle(
                        fontSize: 16.h,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              Text(
                'Safety eyeware requirements and PPE have been around for a long time yet statistics show employees continue to experience significent eye injurious including loss of vision because of wearing the long ppe for the task or simply not wearing it at all.',
                style: TextStyle(
                  fontSize: 14.h,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'There are numerous excuses given as to why that is the case. The reality however is there with today\'s technology and available I wear few excuse hold married rather than loop to blame or excuse and employed unemployee for making for decisions this wave in a focus on positive and effective practices that can help you and your employees get out of this injurious cycle',
                style: TextStyle(
                  fontSize: 14.h,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 35.h),
              Text(
                'Join below Link for this free webinar!',
                style: TextStyle(
                  fontSize: 14.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25.h),
              GestureDetector(
                onTap: _openWebinarLink,
                child: Text(
                  'https://meet.google.com/hou-nwqj-oui',
                  style: TextStyle(
                    fontSize: 14.h,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Meeting ID: 8643266885378',
                style: TextStyle(
                  fontSize: 14.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Password: 8754345677',
                style: TextStyle(
                  fontSize: 14.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
