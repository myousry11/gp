import 'package:flutter/material.dart';
import 'package:untitled6/shared/components/constants.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 40.13, 17.0),
            child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Hello, ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25.0,
                            height: 1.08,
                            letterSpacing: 0.375,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FutureBuilder(
                    future: Future.delayed(Duration(seconds: 1)),
                    builder: (context, snapshot) {
                      DateTime now = DateTime.now();
                      List<String> daysOfWeek = [
                        'Monday',
                        'Tuesday',
                        'Wednesday',
                        'Thursday',
                        'Friday',
                        'Saturday',
                        'Sunday'
                      ];
                      List<String> months = [
                        'January',
                        'February',
                        'March',
                        'April',
                        'May',
                        'June',
                        'July',
                        'August',
                        'September',
                        'October',
                        'November',
                        'December'
                      ];

                      return Row(
                        children: [
                          Text(
                            '${daysOfWeek[now.weekday - 1]},',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '${now.day}',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '${months[now.month - 1]}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '${now.year}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(

                            width: 110.0, // Set your desired width
                            height: 200.0,
                            child: Container(
                              width: double.infinity,
                              height: 642.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 129.0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 125.0,
                                          height: double.infinity,
                                          child:
                                          Stack(
                                            children:  [
                                              Positioned(
                                                // group9owK (220:446)
                                                left:  0.0,
                                                top:  0.0,
                                                child: Container(
                                                  padding:  EdgeInsets.fromLTRB(17.45, 19, 3, 19),
                                                  width:  119,
                                                  height:  129,
                                                  decoration:  BoxDecoration (
                                                    border:  Border.all(color : Color(0x0f267a72)),
                                                    borderRadius:  BorderRadius.circular(15),
                                                    gradient:  LinearGradient (
                                                      begin:  Alignment(-1.933, -0.927),
                                                      end:  Alignment(1, 1),
                                                      colors:  <Color>[Color(0x33248176), Color(0x33cedca0)],
                                                      stops:  <double>[0, 1],
                                                    ),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // thermometerd9f (220:448)
                                                        margin:  EdgeInsets.fromLTRB(0, 0.08, 45.45, 0),
                                                        width:  17.1,
                                                        height:  26.67,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        // dswitchvPf (220:450)
                                                        width:  31,
                                                        height:  16,
                                                        child: Icon(
                                                            Icons.key
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // temperaturef6M (220:461)
                                                left:  12,
                                                top:  54,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  89,
                                                    height:  24,
                                                    child:
                                                    Text(
                                                      'Temperature',
                                                      style:  TextStyle (
                                                        fontSize:  13,
                                                        fontWeight:  FontWeight.w700,
                                                        height:  1.84,
                                                        color:  Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // mditemperaturecelsiuswZf (220:462)
                                                left:  39.5,
                                                top:  90.5,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  14.74,
                                                    height:  14.17,
                                                    child: Icon(
                                                        Icons.ac_unit_outlined
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // EYm (220:464)
                                                left:  23,
                                                top:  88.5,
                                                child:
                                                Center(
                                                  child:
                                                  Align(
                                                    child:
                                                    SizedBox(
                                                      width:  16,
                                                      height:  24,
                                                      child:
                                                      Text(
                                                        '25',
                                                        textAlign:  TextAlign.center,
                                                        style:  TextStyle (
                                                          fontSize:  13,
                                                          fontWeight:  FontWeight.w700,
                                                          height:  1.846,
                                                          color:  Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(

                            // Set your desired width or use constraints
                            // width: 110.0,
                            constraints: BoxConstraints(
                              maxWidth: 300.0,  // Set your desired maximum width
                            ),
                            height: 200.0,
                            child: Container(
                              width: double.infinity,
                              height: 642.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 129.0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 125.0,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // group9owK (220:446)
                                                left:  0.0,
                                                top:  0.0,
                                                child: Container(
                                                  padding:  EdgeInsets.fromLTRB(17.45, 19, 3, 19),
                                                  width:  119,
                                                  height:  129,
                                                  decoration:  BoxDecoration (
                                                    border:  Border.all(color : Color(0x0f267a72)),
                                                    borderRadius:  BorderRadius.circular(15),
                                                    gradient:  LinearGradient (
                                                      begin:  Alignment(-1.933, -0.927),
                                                      end:  Alignment(1, 1),
                                                      colors:  <Color>[Color(0x33248176), Color(0x33cedca0)],
                                                      stops:  <double>[0, 1],
                                                    ),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // thermometerd9f (220:448)
                                                        margin:  EdgeInsets.fromLTRB(0, 0.08, 45.45, 0),
                                                        width:  17.1,
                                                        height:  26.67,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        // dswitchvPf (220:450)
                                                        width:  31,
                                                        height:  16,
                                                        child: Icon(
                                                            Icons.key
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // temperaturef6M (220:461)
                                                left:  12,
                                                top:  54,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  89,
                                                    height:  24,
                                                    child:
                                                    Text(
                                                      'Temperature',
                                                      style:  TextStyle (
                                                        fontSize:  13,
                                                        fontWeight:  FontWeight.w700,
                                                        height:  1.84,
                                                        color:  Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // mditemperaturecelsiuswZf (220:462)
                                                left:  39.5,
                                                top:  90.5,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  14.74,
                                                    height:  14.17,
                                                    child: Icon(
                                                        Icons.ac_unit_outlined
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // EYm (220:464)
                                                left:  23,
                                                top:  88.5,
                                                child:
                                                Center(
                                                  child:
                                                  Align(
                                                    child:
                                                    SizedBox(
                                                      width:  16,
                                                      height:  24,
                                                      child:
                                                      Text(
                                                        '25',
                                                        textAlign:  TextAlign.center,
                                                        style:  TextStyle (
                                                          fontSize:  13,
                                                          fontWeight:  FontWeight.w700,
                                                          height:  1.846,
                                                          color:  Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(

                            width: 110.0, // Set your desired width
                            height: 200.0,
                            child: Container(
                              width: double.infinity,
                              height: 642.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 129.0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 125.0,
                                          height: double.infinity,
                                          child:
                                          Stack(
                                            children:  [
                                              Positioned(
                                                // group9owK (220:446)
                                                left:  0.0,
                                                top:  0.0,
                                                child: Container(
                                                  padding:  EdgeInsets.fromLTRB(17.45, 19, 3, 19),
                                                  width:  119,
                                                  height:  129,
                                                  decoration:  BoxDecoration (
                                                    border:  Border.all(color : Color(0x0f267a72)),
                                                    borderRadius:  BorderRadius.circular(15),
                                                    gradient:  LinearGradient (
                                                      begin:  Alignment(-1.933, -0.927),
                                                      end:  Alignment(1, 1),
                                                      colors:  <Color>[Color(0x33248176), Color(0x33cedca0)],
                                                      stops:  <double>[0, 1],
                                                    ),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // thermometerd9f (220:448)
                                                        margin:  EdgeInsets.fromLTRB(0, 0.08, 45.45, 0),
                                                        width:  17.1,
                                                        height:  26.67,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        // dswitchvPf (220:450)
                                                        width:  31,
                                                        height:  16,
                                                        child: Icon(
                                                            Icons.key
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // temperaturef6M (220:461)
                                                left:  12,
                                                top:  54,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  89,
                                                    height:  24,
                                                    child:
                                                    Text(
                                                      'Temperature',
                                                      style:  TextStyle (
                                                        fontSize:  13,
                                                        fontWeight:  FontWeight.w700,
                                                        height:  1.84,
                                                        color:  Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // mditemperaturecelsiuswZf (220:462)
                                                left:  39.5,
                                                top:  90.5,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  14.74,
                                                    height:  14.17,
                                                    child: Icon(
                                                        Icons.ac_unit_outlined
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // EYm (220:464)
                                                left:  23,
                                                top:  88.5,
                                                child:
                                                Center(
                                                  child:
                                                  Align(
                                                    child:
                                                    SizedBox(
                                                      width:  16,
                                                      height:  24,
                                                      child:
                                                      Text(
                                                        '25',
                                                        textAlign:  TextAlign.center,
                                                        style:  TextStyle (
                                                          fontSize:  13,
                                                          fontWeight:  FontWeight.w700,
                                                          height:  1.846,
                                                          color:  Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(

                            // Set your desired width or use constraints
                            // width: 110.0,
                            constraints: BoxConstraints(
                              maxWidth: 300.0,  // Set your desired maximum width
                            ),
                            height: 200.0,
                            child: Container(
                              width: double.infinity,
                              height: 642.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 129.0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 125.0,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // group9owK (220:446)
                                                left:  0.0,
                                                top:  0.0,
                                                child: Container(
                                                  padding:  EdgeInsets.fromLTRB(17.45, 19, 3, 19),
                                                  width:  119,
                                                  height:  129,
                                                  decoration:  BoxDecoration (
                                                    border:  Border.all(color : Color(0x0f267a72)),
                                                    borderRadius:  BorderRadius.circular(15),
                                                    gradient:  LinearGradient (
                                                      begin:  Alignment(-1.933, -0.927),
                                                      end:  Alignment(1, 1),
                                                      colors:  <Color>[Color(0x33248176), Color(0x33cedca0)],
                                                      stops:  <double>[0, 1],
                                                    ),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // thermometerd9f (220:448)
                                                        margin:  EdgeInsets.fromLTRB(0, 0.08, 45.45, 0),
                                                        width:  17.1,
                                                        height:  26.67,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        // dswitchvPf (220:450)
                                                        width:  31,
                                                        height:  16,
                                                        child: Icon(
                                                            Icons.key
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // temperaturef6M (220:461)
                                                left:  12,
                                                top:  54,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  89,
                                                    height:  24,
                                                    child:
                                                    Text(
                                                      'Temperature',
                                                      style:  TextStyle (
                                                        fontSize:  13,
                                                        fontWeight:  FontWeight.w700,
                                                        height:  1.84,
                                                        color:  Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // mditemperaturecelsiuswZf (220:462)
                                                left:  39.5,
                                                top:  90.5,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  14.74,
                                                    height:  14.17,
                                                    child: Icon(
                                                        Icons.ac_unit_outlined
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // EYm (220:464)
                                                left:  23,
                                                top:  88.5,
                                                child:
                                                Center(
                                                  child:
                                                  Align(
                                                    child:
                                                    SizedBox(
                                                      width:  16,
                                                      height:  24,
                                                      child:
                                                      Text(
                                                        '25',
                                                        textAlign:  TextAlign.center,
                                                        style:  TextStyle (
                                                          fontSize:  13,
                                                          fontWeight:  FontWeight.w700,
                                                          height:  1.846,
                                                          color:  Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(

                            width: 110.0, // Set your desired width
                            height: 200.0,
                            child: Container(
                              width: double.infinity,
                              height: 642.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 129.0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 125.0,
                                          height: double.infinity,
                                          child:
                                          Stack(
                                            children:  [
                                              Positioned(
                                                // group9owK (220:446)
                                                left:  0.0,
                                                top:  0.0,
                                                child: Container(
                                                  padding:  EdgeInsets.fromLTRB(17.45, 19, 3, 19),
                                                  width:  119,
                                                  height:  129,
                                                  decoration:  BoxDecoration (
                                                    border:  Border.all(color : Color(0x0f267a72)),
                                                    borderRadius:  BorderRadius.circular(15),
                                                    gradient:  LinearGradient (
                                                      begin:  Alignment(-1.933, -0.927),
                                                      end:  Alignment(1, 1),
                                                      colors:  <Color>[Color(0x33248176), Color(0x33cedca0)],
                                                      stops:  <double>[0, 1],
                                                    ),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // thermometerd9f (220:448)
                                                        margin:  EdgeInsets.fromLTRB(0, 0.08, 45.45, 0),
                                                        width:  17.1,
                                                        height:  26.67,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        // dswitchvPf (220:450)
                                                        width:  31,
                                                        height:  16,
                                                        child: Icon(
                                                            Icons.key
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // temperaturef6M (220:461)
                                                left:  12,
                                                top:  54,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  89,
                                                    height:  24,
                                                    child:
                                                    Text(
                                                      'Temperature',
                                                      style:  TextStyle (
                                                        fontSize:  13,
                                                        fontWeight:  FontWeight.w700,
                                                        height:  1.84,
                                                        color:  Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // mditemperaturecelsiuswZf (220:462)
                                                left:  39.5,
                                                top:  90.5,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  14.74,
                                                    height:  14.17,
                                                    child: Icon(
                                                        Icons.ac_unit_outlined
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // EYm (220:464)
                                                left:  23,
                                                top:  88.5,
                                                child:
                                                Center(
                                                  child:
                                                  Align(
                                                    child:
                                                    SizedBox(
                                                      width:  16,
                                                      height:  24,
                                                      child:
                                                      Text(
                                                        '25',
                                                        textAlign:  TextAlign.center,
                                                        style:  TextStyle (
                                                          fontSize:  13,
                                                          fontWeight:  FontWeight.w700,
                                                          height:  1.846,
                                                          color:  Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(

                            // Set your desired width or use constraints
                            // width: 110.0,
                            constraints: BoxConstraints(
                              maxWidth: 300.0,  // Set your desired maximum width
                            ),
                            height: 200.0,
                            child: Container(
                              width: double.infinity,
                              height: 642.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 129.0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 125.0,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // group9owK (220:446)
                                                left:  0.0,
                                                top:  0.0,
                                                child: Container(
                                                  padding:  EdgeInsets.fromLTRB(17.45, 19, 3, 19),
                                                  width:  119,
                                                  height:  129,
                                                  decoration:  BoxDecoration (
                                                    border:  Border.all(color : Color(0x0f267a72)),
                                                    borderRadius:  BorderRadius.circular(15),
                                                    gradient:  LinearGradient (
                                                      begin:  Alignment(-1.933, -0.927),
                                                      end:  Alignment(1, 1),
                                                      colors:  <Color>[Color(0x33248176), Color(0x33cedca0)],
                                                      stops:  <double>[0, 1],
                                                    ),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // thermometerd9f (220:448)
                                                        margin:  EdgeInsets.fromLTRB(0, 0.08, 45.45, 0),
                                                        width:  17.1,
                                                        height:  26.67,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        // dswitchvPf (220:450)
                                                        width:  31,
                                                        height:  16,
                                                        child: Icon(
                                                            Icons.key
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // temperaturef6M (220:461)
                                                left:  12,
                                                top:  54,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  89,
                                                    height:  24,
                                                    child:
                                                    Text(
                                                      'Temperature',
                                                      style:  TextStyle (
                                                        fontSize:  13,
                                                        fontWeight:  FontWeight.w700,
                                                        height:  1.84,
                                                        color:  Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // mditemperaturecelsiuswZf (220:462)
                                                left:  39.5,
                                                top:  90.5,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  14.74,
                                                    height:  14.17,
                                                    child: Icon(
                                                        Icons.ac_unit_outlined
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // EYm (220:464)
                                                left:  23,
                                                top:  88.5,
                                                child:
                                                Center(
                                                  child:
                                                  Align(
                                                    child:
                                                    SizedBox(
                                                      width:  16,
                                                      height:  24,
                                                      child:
                                                      Text(
                                                        '25',
                                                        textAlign:  TextAlign.center,
                                                        style:  TextStyle (
                                                          fontSize:  13,
                                                          fontWeight:  FontWeight.w700,
                                                          height:  1.846,
                                                          color:  Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(

                            width: 110.0, // Set your desired width
                            height: 200.0,
                            child: Container(
                              width: double.infinity,
                              height: 642.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 129.0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 125.0,
                                          height: double.infinity,
                                          child:
                                          Stack(
                                            children:  [
                                              Positioned(
                                                // group9owK (220:446)
                                                left:  0.0,
                                                top:  0.0,
                                                child: Container(
                                                  padding:  EdgeInsets.fromLTRB(17.45, 19, 3, 19),
                                                  width:  119,
                                                  height:  129,
                                                  decoration:  BoxDecoration (
                                                    border:  Border.all(color : Color(0x0f267a72)),
                                                    borderRadius:  BorderRadius.circular(15),
                                                    gradient:  LinearGradient (
                                                      begin:  Alignment(-1.933, -0.927),
                                                      end:  Alignment(1, 1),
                                                      colors:  <Color>[Color(0x33248176), Color(0x33cedca0)],
                                                      stops:  <double>[0, 1],
                                                    ),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // thermometerd9f (220:448)
                                                        margin:  EdgeInsets.fromLTRB(0, 0.08, 45.45, 0),
                                                        width:  17.1,
                                                        height:  26.67,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        // dswitchvPf (220:450)
                                                        width:  31,
                                                        height:  16,
                                                        child: Icon(
                                                            Icons.key
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // temperaturef6M (220:461)
                                                left:  12,
                                                top:  54,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  89,
                                                    height:  24,
                                                    child:
                                                    Text(
                                                      'Temperature',
                                                      style:  TextStyle (
                                                        fontSize:  13,
                                                        fontWeight:  FontWeight.w700,
                                                        height:  1.84,
                                                        color:  Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // mditemperaturecelsiuswZf (220:462)
                                                left:  39.5,
                                                top:  90.5,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  14.74,
                                                    height:  14.17,
                                                    child: Icon(
                                                        Icons.ac_unit_outlined
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // EYm (220:464)
                                                left:  23,
                                                top:  88.5,
                                                child:
                                                Center(
                                                  child:
                                                  Align(
                                                    child:
                                                    SizedBox(
                                                      width:  16,
                                                      height:  24,
                                                      child:
                                                      Text(
                                                        '25',
                                                        textAlign:  TextAlign.center,
                                                        style:  TextStyle (
                                                          fontSize:  13,
                                                          fontWeight:  FontWeight.w700,
                                                          height:  1.846,
                                                          color:  Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Container(

                            // Set your desired width or use constraints
                            // width: 110.0,
                            constraints: BoxConstraints(
                              maxWidth: 300.0,  // Set your desired maximum width
                            ),
                            height: 200.0,
                            child: Container(
                              width: double.infinity,
                              height: 642.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 129.0,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 125.0,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // group9owK (220:446)
                                                left:  0.0,
                                                top:  0.0,
                                                child: Container(
                                                  padding:  EdgeInsets.fromLTRB(17.45, 19, 3, 19),
                                                  width:  119,
                                                  height:  129,
                                                  decoration:  BoxDecoration (
                                                    border:  Border.all(color : Color(0x0f267a72)),
                                                    borderRadius:  BorderRadius.circular(15),
                                                    gradient:  LinearGradient (
                                                      begin:  Alignment(-1.933, -0.927),
                                                      end:  Alignment(1, 1),
                                                      colors:  <Color>[Color(0x33248176), Color(0x33cedca0)],
                                                      stops:  <double>[0, 1],
                                                    ),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                                    children:  [
                                                      Container(
                                                        // thermometerd9f (220:448)
                                                        margin:  EdgeInsets.fromLTRB(0, 0.08, 45.45, 0),
                                                        width:  17.1,
                                                        height:  26.67,
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        // dswitchvPf (220:450)
                                                        width:  31,
                                                        height:  16,
                                                        child: Icon(
                                                            Icons.key
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // temperaturef6M (220:461)
                                                left:  12,
                                                top:  54,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  89,
                                                    height:  24,
                                                    child:
                                                    Text(
                                                      'Temperature',
                                                      style:  TextStyle (
                                                        fontSize:  13,
                                                        fontWeight:  FontWeight.w700,
                                                        height:  1.84,
                                                        color:  Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // mditemperaturecelsiuswZf (220:462)
                                                left:  39.5,
                                                top:  90.5,
                                                child:
                                                Align(
                                                  child:
                                                  SizedBox(
                                                    width:  14.74,
                                                    height:  14.17,
                                                    child: Icon(
                                                        Icons.ac_unit_outlined
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // EYm (220:464)
                                                left:  23,
                                                top:  88.5,
                                                child:
                                                Center(
                                                  child:
                                                  Align(
                                                    child:
                                                    SizedBox(
                                                      width:  16,
                                                      height:  24,
                                                      child:
                                                      Text(
                                                        '25',
                                                        textAlign:  TextAlign.center,
                                                        style:  TextStyle (
                                                          fontSize:  13,
                                                          fontWeight:  FontWeight.w700,
                                                          height:  1.846,
                                                          color:  Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
