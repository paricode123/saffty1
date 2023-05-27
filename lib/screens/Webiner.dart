import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/screens/webinar_page.dart';

class WebinerPage extends StatefulWidget {
  const WebinerPage({Key? key}) : super(key: key);

  @override
  State<WebinerPage> createState() => _WebinerPageState();
}

class _WebinerPageState extends State<WebinerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Text('Recent Webiner',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16.sp),),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildContainer(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageWeb()),
                    );
                  },),
                  _buildContainer(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageWeb()),
                    );
                  },),
                  _buildContainer(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageWeb()),
                    );
                  },),
                  _buildContainer(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageWeb()),
                    );
                  },),
                  _buildContainer(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageWeb()),
                    );
                  },),
                  _buildContainer(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageWeb()),
                    );                  },),
                  _buildContainer(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageWeb()),
                    );
                  },),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildContainer(Function() onTap) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.h),
          child: Material(
            elevation: 4,
            child: GestureDetector(
              onTap: onTap,
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
                                      fontSize: 12.sp,
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
                                      fontSize: 10.sp,
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
      ],
    );
  }
}