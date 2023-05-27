import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saffety/screens/cvfinal.dart';

import 'cv_upload.dart';

class UploadResumePage extends StatefulWidget {
  @override
  _UploadResumePageState createState() => _UploadResumePageState();
}

class _UploadResumePageState extends State<UploadResumePage> {
  // Declare a variable to store the selected file path
  String? _filePath;

  // Define a function to handle file selection
  void _selectFile() async {
    // Use file picker package to select a file
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _filePath = result.files.single.path!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Upload Resume or CV', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.h, vertical: 15.0.h),
            child: Container(
              padding: EdgeInsets.all(12.0.h),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5.0.r),
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
                    SizedBox(height: 70.0.h),
                    _filePath != null
                        ? Text('Selected file: $_filePath', style: TextStyle(fontSize: 16.0.sp))
                        : Container(),
                    SizedBox(height: 16.0.h),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue.shade50,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 10.0.h),
                        child: Text(
                          'Upload A Doc/PDF',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade800,
                          ),
                        ),
                      ),
                      onPressed: _selectFile,
                    ),
                    SizedBox(height: 50.0.h),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50.0.w, vertical: 10.0.h),
                        child: Text(
                          'Upload',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CvFinal()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}