import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_appkk/Screens/tensorbuffer.dart';
import 'dart:io';
//
import 'package:flutter/material.dart';

import 'package:tflite_flutter/tflite_flutter.dart';
//
import 'package:image/image.dart' as imageLib;
import 'package:flutter_appkk/main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as imageLib;
//import 'package:object_detection/tflite/recognition.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
//import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

import '../ip.dart';

class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);

  @override
  _userState createState() => _userState();
}

class _userState extends State<user> {
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

  @override
  void initState() {
    super.initState();
    imagePicker = new ImagePicker();
    _loading = true;
    setState(() {
      _loading = false;
    });
/*
    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
*/
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.width * 0.08,
            left: MediaQuery.of(context).size.width * 0.02,
            child: Container(
              height: 24,
              width: 24,
              child: Icon(
                Icons.menu_open,
                color: Color(0xff9589DE),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.2,
            left: MediaQuery.of(context).size.width * 0.16,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/woman.png'),
              backgroundColor: Color(0x200E32).withOpacity(1),
              radius: 30,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.249,
            left: MediaQuery.of(context).size.width * 0.36,
            child: Container(
              width: 275,
              height: 86,
              child: Text(
                "Good morning mai",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff150B3D)),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.42,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xffC4C4C4),
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(4, 4)),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffffffff).withOpacity(1),
                  ),
                  height: MediaQuery.of(context).size.width * 0.13,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 35,
                        color: Color(0xffAAA6B9).withOpacity(1),
                      ),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Color(0xffAAA6B9).withOpacity(1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff9589DE).withOpacity(1),
                  ),
                  height: 55,
                  width: 55,
                  child: Icon(
                    Icons.filter_alt_rounded,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.6,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xffC4C4C4),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(4, 4)),
                ],
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffffffff).withOpacity(1),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.05,
                    left: MediaQuery.of(context).size.width * 0.47,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xffC4C4C4),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(4, 4)),
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff0D0140).withOpacity(1),
                      ),
                      width: 40,
                      height: 5,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.16,
                    left: MediaQuery.of(context).size.width * 0.15,
                    child: Container(
                      width: 275,
                      height: 86,
                      child: Text(
                        "please upload a scanned OCT image",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff150B3D)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.26,
                    left: MediaQuery.of(context).size.width * 0.15,
                    child: Container(
                      width: 275,
                      height: 86,
                      child: Text(
                        "make sure your photo is very clear and in a high \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t resoultion ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff524B6B)),
                      ),
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.width,
                      left: MediaQuery.of(context).size.width * 0.16,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                              child: Text("Start test".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Color(0xff9589DE),
                                  ),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(9),
                                          side: BorderSide(
                                            color: Color(0xff9589DE),
                                          )))),
                              onPressed: () {
                                //classi1();
                                print(sampleString);
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ImageFromGalleryEx(sampleString)));
                              }))),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.5,
                    left: MediaQuery.of(context).size.width * 0.1,
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      padding: EdgeInsets.all(6),
                      child: GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.width * 0.17,
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.06,
                              ),
                              Icon(Icons.upload_file),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              Text("upload your scanned photo",
                                  style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ),
                        onTap: () async {
                          XFile image = await imagePicker.pickImage(
                              source: ImageSource.gallery,
                              imageQuality: 50,

                              preferredCameraDevice: CameraDevice.front);

                          setState(() {
                            _image = File(image.path);

                            nimg = image.path;
                            print(nimg);
                            classi1();

                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TensorImage _preProcess() {
    int cropSize =min(_inputImage.height, _inputImage.width);
    return ImageProcessorBuilder()
        .add(ResizeWithCropOrPadOp(cropSize, cropSize))
        .add(ResizeOp(
        _inputShape[1], _inputShape[2], ResizeMethod.NEAREST_NEIGHBOUR))
        .build()
        .process(_inputImage);
  }
  classi1() async{  //first stage model
    final interpreter = await Interpreter.fromAsset("phase1_model.tflite");
    _inputShape = interpreter.getInputTensor(0).shape;
    _outputShape = interpreter.getOutputTensor(0).shape;
    _inputType = interpreter.getInputTensor(0).type;
    _outputType = interpreter.getOutputTensor(0).type;
    print(_outputType);
    TensorBufferFloat _outputBuffer2=TensorBufferFloat(_outputShape);


    imageLib.Image imageInput = imageLib.decodeImage(_image!.readAsBytesSync())!;
    _inputImage = TensorImage(_inputType);
    _inputImage.loadImage(imageInput);

    print(_inputImage.height);
    print(_inputImage.width);
    print(_outputBuffer2.shape);

    interpreter.run(_inputImage.buffer, _outputBuffer2.buffer);
    List<double> data=_outputBuffer2.getDoubleList();
    double thre=0.537;
    double sum=0;
    for (int i=0;i<data.length;i++){
      if(data.elementAt(i)>=thre){
        data[i]=1;

      }
      else
        data[i]=0;
      sum+=data[i];
    }
    print(data);
    print(sum);
    if(sum==1){
      sampleString='0 NO_DR';
    }
    else if(sum==2){
      sampleString='1 DR';
    }


    interpreter.close();
    if(sum==2)
      classi2();

  }

  classi2() async{ //second stage model
    final interpreter = await Interpreter.fromAsset("phase2_model.tflite");
    _inputShape = interpreter.getInputTensor(0).shape;
    _outputShape = interpreter.getOutputTensor(0).shape;
    _inputType = interpreter.getInputTensor(0).type;
    _outputType = interpreter.getOutputTensor(0).type;
    TensorBufferFloat _outputBuffer2=TensorBufferFloat(_outputShape);
    imageLib.Image imageInput = imageLib.decodeImage(_image!.readAsBytesSync())!;
    _inputImage = TensorImage(_inputType);
    _inputImage.loadImage(imageInput);

    print(_outputType);
    print(_inputImage.height);
    print(_inputImage.width);
    print(_outputBuffer2.shape);


    interpreter.run(_inputImage.buffer, _outputBuffer2.buffer);
    List<double> data=_outputBuffer2.getDoubleList();
    double thre=0.537;
    double sum=0;
    for (int i=0;i<data.length;i++){
      if(data.elementAt(i)>=thre){
        data[i]=1;

      }
      else
        data[i]=0;
      sum+=data[i];
    }
    print(data);
    print(sum);
    if(sum==1){
      sampleString='3 Mild';
    }
    else if(sum==2){
      sampleString='4 Moderate';
    }
    else if(sum==3){
      sampleString='1 Severe';
    }
    else{
      sampleString='2 Proliferate';
    }

    interpreter.close();

  }


  @override
  void dispose() {
    //Tflite.close();
    super.dispose();
  }
}
