import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'job_details.dart';

class JobPage extends StatefulWidget {
  const JobPage({Key? key}) : super(key: key);

  @override
  State<JobPage> createState() => _JobPageState();
}
class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0058AC),
        centerTitle: true,
        title: Text("Result (20)",style: TextStyle(fontSize: 16.sp),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list_sharp),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildContainer(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetails()),
                );  },),
              _buildContainer(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetails()),
                );  },),
              _buildContainer(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetails()),
                );  },),
              _buildContainer(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetails()),
                );  },),
              _buildContainer(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetails()),
                );  },),
              _buildContainer(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetails()),
                );  },),
              _buildContainer(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetails()),
                );  },),
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
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Material(
            elevation: 4,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: MediaQuery.of(context).size.width - 40.w,
                height: 200.h,
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/fb.png'),
                              radius: 30.r,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Software Engineer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.sp),
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
                      padding: EdgeInsets.all(5.sp),
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
                      padding:  EdgeInsets.all(5.w),
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
        ),

      ],
    );
  }

}
