import 'package:flutter/material.dart';

import 'cvfinal.dart';

class CvUpload extends StatefulWidget {
  const CvUpload({Key? key}) : super(key: key);

  @override
  State<CvUpload> createState() => _CvUploadState();
}

class _CvUploadState extends State<CvUpload> {
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Upload your CV or resume and use it when you apply for jobs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700),
                    ),
                    SizedBox(height: 40.0),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/load.jpg'),
                    ),
                    SizedBox(height: 50.0),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CvFinal()),
                        );
                      },
                      child: Text('Uploading',style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                    )
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
