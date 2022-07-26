import 'package:flutter/material.dart';
import 'package:flutter_appkk/Screens/user.dart';
import 'package:flutter_appkk/Screens/user2.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'coming_soon.dart';

class Degree_de extends StatefulWidget {
  Degree_de({required this.val,required this.color,required this.text1,required this.text2});

  var val;
  final color;
  final text1;
  final text2;

  @override
  _Degree_deState createState() => _Degree_deState();
}

class _Degree_deState extends State<Degree_de> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Stack(children: [
        Positioned(
          top: MediaQuery.of(context).size.width * 0.1,
          left: MediaQuery.of(context).size.width * 0.03,
          child: GestureDetector(child:CircleAvatar(
            child: Icon(
              Icons.arrow_back,
              color: Color(0xff9F6ABA).withOpacity(1),
            ),
            backgroundColor: Color(0xffffffff).withOpacity(1),
            radius: 25,
          ),  onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>user2()));
          },
          ),

        ),
        Positioned(
          top: MediaQuery.of(context).size.width * 0.2,left:MediaQuery.of(context).size.width * 0.3,
          child: Container(
            child: Text(widget.text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff3C444C)),),
          ),
        ),  Positioned(
          top: MediaQuery.of(context).size.width * 0.2,left:MediaQuery.of(context).size.width * 0.2,
          child: Container(
            child: Text(widget.text2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: widget.color),),
          ),
        ),
        Positioned(
            //Contact your doctor
            left: MediaQuery.of(context).size.width * 0.15,
            top: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '4th DR',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff3C444C),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Text(
                  '3rd DR',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff3C444C),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                Text(
                  '2nd DR',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff3C444C),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text(
                  '1st DR',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff3C444C),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Text(
                  'No DR',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff3C444C),
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.28,
          top: MediaQuery.of(context).size.width * 0.33,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.6,
            child: SfSlider.vertical(
              inactiveColor: Color(0xffD9D9D9),
              activeColor: Color(0xff9589DE),
              min: 0.0,
              max: 100.0,
              value: widget.val,
              interval: 25,
              showTicks: false,
              enableTooltip: false,
              minorTicksPerInterval: 0,
              onChanged: (dynamic value) {
                setState(() {
                  widget.val = value;
                });
              },
            ),
          ),
        ),
        Positioned(
            left: MediaQuery.of(context).size.width * 0.7,
            top: MediaQuery.of(context).size.width * 0.36,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/images/SVG/Frame.svg',
                  height: 30.0,
                  width: 30.0,
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                SvgPicture.asset(
                  'assets/images/SVG/Frame-4.svg',
                  height: 30.0,
                  width: 30.0,
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.085,
                ),
                SvgPicture.asset(
                  'assets/images/SVG/Frame-1.svg',
                  height: 30.0,
                  width: 30.0,
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                SvgPicture.asset(
                  'assets/images/SVG/Frame-2.svg',
                  height: 30.0,
                  width: 30.0,
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                SvgPicture.asset(
                  'assets/images/SVG/Frame-3.svg',
                  height: 30.0,
                  width: 30.0,
                  allowDrawingOutsideViewBox: true,
                ),
              ],
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.83,
            left: MediaQuery.of(context).size.width * 0.14,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                    child: Text("Contact your doctor".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xff9589DE),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9),
                                    side: BorderSide(
                                      color: Color(0xff9589DE),
                                    )))),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => coming_soon()));
                    }))),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffE5E5E5).withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Color(0xff9589DE),
        selectedItemColor: Color(0xff9589DE),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff9589DE),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1_sharp),
            label: 'Eye Docotrs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: 'Eye Tips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
