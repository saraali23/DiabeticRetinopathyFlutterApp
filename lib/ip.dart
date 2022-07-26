import 'dart:io';
import 'package:flutter/material.dart';

import 'package:tflite_flutter/tflite_flutter.dart';
//
import 'package:image/image.dart' as imageLib;
import 'package:flutter_appkk/main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';


import 'package:flutter/material.dart';
import 'package:flutter_appkk/main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tflite/tflite.dart';
import 'Home.dart';
import 'Screens/Screen2.dart';
import 'Screens/degree_dr.dart';
import 'Screens/user.dart';
import 'dr.dart';
import 'no_dr.dart';

class ImageFromGalleryEx extends StatefulWidget {
  final type;

  ImageFromGalleryEx(this.type);

  @override
  ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
}

class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
  var _image;
  var imagePicker;
  var type;
  var ret = '';
  var sampleString = ' ';
  late List<int> _inputShape;
  late List<int> _outputShape;
  late TensorImage _inputImage;


  late TfLiteType _inputType;
  late TfLiteType _outputType;
  late List _outputs;
  bool _loading = false;
  var nimg;

  ImageFromGalleryExState(this.type);

  @override
  void initState() {
    super.initState();
    imagePicker = new ImagePicker();
    _loading = true;



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GestureDetector(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.width * 1.15,
                    left: MediaQuery.of(context).size.width * 0.075,
                    child: Container(
                      height: 205,
                      width: 316,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffffffff).withOpacity(0.5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 1.16,
                    left: MediaQuery.of(context).size.width * 0.083,
                    child: Container(
                      height: 199,
                      width: 310,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff9589DE).withOpacity(0.5),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 1.25,
                    left: MediaQuery.of(context).size.width * 0.32,
                    child: Container(
                      width: 275,
                      height: 43,
                      child: Text(
                        "Get on your test.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 1.4,
                    left: MediaQuery.of(context).size.width * 0.38,
                    child: CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 40.0,
                      animation: true,
                      percent: 1,
                      center: GestureDetector(
                        child: Text(
                          'Get',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                          ),
                        ),
                        onTap: () async {

                          print(widget.type);
                          // 0 NO_DR
                          // 1 Severe
                          // 2 Proliferate
                          // 3 Mild
                          // 4 Moderate

                          if (widget.type == '0 NO_DR') {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Degree_de(
                                val: 0,
                                color: Color(0xff33A537),
                                text1: 'congratulations',
                                text2: '\n Your test is negative to DR',
                              ),
                            ));
                          }
                          if (widget.type == '3 Mild') {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Degree_de(
                                val: 25,
                                color: Color(0xffC80C0C),
                                text1: 'unfortunately',
                                text2: '\nyou May have first degree of DR',
                              ),
                            ));
                          }
                          if (widget.type == '4 Moderate') {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Degree_de(
                                val: 50,
                                color: Color(0xffC80C0C),
                                text1: 'unfortunately',
                                text2: '\nyou May have second  degree of DR',
                              ),
                            ));
                          }
                          if (widget.type == '1 Severe') {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Degree_de(
                                val: 75,
                                color: Color(0xffC80C0C),
                                text1: 'unfortunately',
                                text2: '\nyou May have third  degree of DR',
                              ),
                            ));
                          } else if (widget.type == '2 Proliferate') {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Degree_de(
                                val: 100,
                                color: Color(0xffC80C0C),
                                text1: 'unfortunately',
                                text2: '\nyou May have fourth  degree of DR',
                              ),
                            ));
                          }
                        },
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Color(0x200E32).withOpacity(1),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: const Color(0xff9589DE),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Color(0xff9589DE).withOpacity(0.4), BlendMode.srcOver),
                  image: AssetImage(
                    'assets/images/eye.png',
                  ),
                ),
              ),
            ),
            onTap: () {
              print(sampleString);
            },
          ),


        ],
      ),
    );
  }



  @override
  void dispose() {
    super.dispose();
  }
}
