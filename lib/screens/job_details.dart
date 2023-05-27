import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/screens/succesful.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({Key? key}) : super(key: key);

  @override
  State<JobDetails> createState() => _JobDetailsState();
}
class _JobDetailsState extends State<JobDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 306.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 25.sp,
                    ),
                    Text(
                      'Job Details ',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D0D26),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/fb.png',
                        height: 200.h,
                        width: 200.w,
                      ),
                      radius: 40.r,
                    ),
                    Text(
                      'Software Engineer',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D0D26),
                      ),
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D0D26),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20.r,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                              child: Text(
                                'Full Time',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.black),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey.shade300,
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20.r,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                              child: Text(
                                'Job Location',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 20.sp,
                              ),
                              Text(
                                '180,00/-',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Seattle, USA',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0D0D26),
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Text(
                        'We are the terms who create all of Facebook\'s products used by billions of people around the world. Wants to build new features and improve existing products like Messenger, Video, Groups, News Feed, Search and more?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xFF494A50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 18.w),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Respondibilities:',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF494A50),
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Text("Full stack web all mobile application development with a variety of coding languages.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xFF494A50),
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Text("Create consumer portals and features using internal programming languages hack.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xFF494A50),
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Text("Implement wave all mobile interfaces using XHTML CSS and JavaScript.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xFF494A50),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.h,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessfulPage()),
                  );
                },
                child: Container(
                  width: 327.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: Color(0xFF0058AC),
                  ),
                  child: Center(child: Text('Apply Now',style: TextStyle(color: Colors.white,fontSize: 16.sp),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
