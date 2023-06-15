import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/screens/Mock_test.dart';
import 'package:saffety/screens/Webiner.dart';
import 'package:saffety/screens/job.dart';
import 'package:saffety/screens/job_details.dart';
import 'package:saffety/screens/quizquestion.dart';
import 'package:saffety/screens/webinar_page.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  bool _isFollowing = false;
  String operatingSystem = Platform.operatingSystem;

  final PageController _controller = PageController(initialPage: 0);
  late Timer _timer;
  int _currentPage = 0;
  bool isLastPage = false;

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {}
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  void _toggleFollow() {
    setState(() {
      _isFollowing = !_isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: NavDrawer(onWebinarTapped: () {  }, onMockTestTapped: () {  }, onProfilePageTapped: () {  },),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth.w,
          child: Column(
            children: [
              Container(
                height: _height * 0.25.h,
                child: PageView(
                  controller: _controller,
                  children: [
                    Image.asset('assets/images/slide1.png', fit: BoxFit.cover),
                    Image.asset('assets/images/slide2.png', fit: BoxFit.cover),
                    Image.asset('assets/images/slide3.png', fit: BoxFit.cover),
                  ],
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                      isLastPage = page == 2;
                    });
                  },
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Recent Job',
                        style: TextStyle(fontSize: 13.sp, color: Colors.blue.shade700),
                      ),
                    ),
                    TextButton(
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JobPage()),
                      );},
                      child: Text(
                        'See All',
                        style: TextStyle(fontSize: 13.sp, color: Colors.blue.shade700),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Material(
                    elevation: 4,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => JobDetails()),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width - 40.0.w,
                        height: 200.h,
                        padding: EdgeInsets.all(16.0.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage: AssetImage('assets/images/fb.png'),
                                      radius: 30.0.r,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Software Engineer',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0.sp,
                                            color: Colors.blue.shade800,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0.w),
                                          child: Text(
                                            'Facebook',
                                 style: TextStyle(
                                   color: Colors.grey,
                                   fontSize: 16.sp,
                                 ),
                               ),
                             ),
                           ],
                         ),]
       ),
                 ),
                       Padding(
                         padding:  EdgeInsets.all(5.sp),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Row(
                               children: [
                                 Icon(Icons.more_time_outlined,color: Colors.grey.shade700,),
                                 SizedBox(width: 8.w),
                                 Text('Full time',style: TextStyle(color: Colors.grey.shade600),),
                               ],
                             ),
                             Row(
                               children: [
                                 Icon(Icons.location_on,color: Colors.grey.shade700,),
                                 SizedBox(width: 8.w),
                                 Text('New Delhi, India',style: TextStyle(color: Colors.grey.shade600)),
                               ],
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding:  EdgeInsets.all(5.sp),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Row(
                               children: [
                                 Icon(Icons.currency_rupee,color: Colors.grey.shade700,),
                                 SizedBox(width: 8.w),
                                 Text('60,000/-',style: TextStyle(color: Colors.grey.shade600)),
                               ],
                             ),

                             Row(
                               children: [
                                 Icon(Icons.call_to_action_outlined,color: Colors.grey.shade700,),
                                 SizedBox(width: 8.w),
                                 Text('Minimum 5 years',style: TextStyle(color: Colors.grey.shade600)),
                               ],
                             ),
                           ],
                         ),
                       ),
                   ],
                 ),
         ),
                    ),
               ),
                   SizedBox(height: 10,),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 10.w),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         TextButton(
                           onPressed: () {},
                           child: Text('Quiz',style: TextStyle(fontSize: 13.sp,color: Colors.blue.shade700),),
                         ),
                         TextButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => MockTest()),
                             );
                           },
                           child: Text('See All',style: TextStyle(fontSize: 13.sp,color: Colors.blue.shade700),),
                         ),
                       ],
                     ),
                   ),
                   Material(
                     elevation: 4,
                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => GKQuizPage()),
                         );
                       },
                       child: Container(
                         width: MediaQuery.of(context).size.width - 40.w,
                         height: 130.h,
                         child: Column(
                           children: [
                             Row(
                                 children: <Widget>[
                                   Container(
                                     width: 100.w,
                                     height: 130.h,
                                     child: Image.asset('assets/images/quiz.png',fit: BoxFit.cover,)
                                   ),
                                   Padding(
                                     padding:  EdgeInsets.all(8.w),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: <Widget>[
                                         Padding(
                                           padding:  EdgeInsets.all(8.w),
                                           child: Text(
                                             'GK Mock Test',
                                             style: TextStyle(
                                               fontWeight: FontWeight.w600,
                                               fontSize: 17.sp,
                                               color: Colors.blue.shade800,
                                             ),
                                           ),
                                         ),
                                         Padding(
                                           padding:  EdgeInsets.all(8.w),
                                           child: Row(
                                             children: [
                                               Icon(Icons.format_list_numbered_outlined,color: Colors.grey.shade700,size: 20.sp,),
                                               SizedBox(width: 10.w,),
                                               Text(
                                                 '5 Question',
                                                 style: TextStyle(
                                                   color: Colors.grey,
                                                   fontSize: 15.sp,
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding:  EdgeInsets.all(8.w),
                                           child: Row(
                                             children: [
                                               Icon(Icons.timelapse_rounded,color: Colors.grey.shade700,size: 20.w,),
                                               SizedBox(width: 10.w,),
                                               Text(
                                                 '30 min',
                                                 style: TextStyle(
                                                   color: Colors.grey,
                                                   fontSize: 15.sp,
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),]
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 10.h),
                   Container(
                     width: MediaQuery.of(context).size.width - 40.w,
                     height: 100.h,
                     color: Colors.white,
                     child: Image.asset('assets/images/add.png',fit: BoxFit.cover,),
                   ),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 10.h),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         TextButton(
                           onPressed: () {

                           },
                           child: Text('Webiner',style: TextStyle(fontSize: 13.sp,color: Colors.blue.shade700),),
                         ),
                         TextButton(
                           onPressed: () {Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => WebinerPage()),
                           );},
                           child: Text('See All',style: TextStyle(fontSize: 13.sp,color: Colors.blue.shade700),),
                         ),
                       ],
                     ),
                   ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h),
                    child: Material(
                      elevation: 4,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PageWeb()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 40.w,
                          height: 210.h,
                          child: Column(
                            children: [
                              Row(
                                  children: <Widget>[
                                    Container(
                                        width: 130.w,
                                        height: 210.h,
                                        child: Image.asset('assets/images/webiner.jpg',fit: BoxFit.cover,)
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.all(8.w),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding:  EdgeInsets.symmetric(vertical: 8.h),
                                            child: Text(
                                              'How to Create a Successful Safety\n Eyewear Program',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.symmetric(vertical: 5.h),
                                            child: Text(
                                              'During this free webinar, we will discuss\n the types of eye hazards and injuries\n community experienced at work and why\n the steps to creating a successful safety.',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 9.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.symmetric(vertical: 3.h),
                                            child: Row(
                                              children: [
                                                Icon(Icons.calendar_month,color: Colors.grey.shade700,size: 18.sp,),
                                                SizedBox(width: 15.w,),
                                                Text(
                                                  'DATE: APR 13, 2023',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 13.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.symmetric(vertical: 3.h),
                                            child: Row(
                                              children: [
                                                Icon(Icons.timelapse_rounded,color: Colors.grey.shade700,size: 15.sp,),
                                                SizedBox(width: 15.w,),
                                                Text(
                                                  'TIME: 2:00 PM',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 13.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.symmetric(vertical: 8.h),
                                            child: Text(
                                              'Duration: 1Hour',
                                              style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),]
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                 ],
               ),
             ],
           ),
         ),
       ),
    );
  }
}
