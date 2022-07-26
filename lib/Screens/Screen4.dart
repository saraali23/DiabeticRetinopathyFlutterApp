import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appkk/Screens/user.dart';
import 'package:flutter_appkk/Screens/user2.dart';
import 'package:flutter_appkk/no_dr.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  _DRState createState() => _DRState();
}

class _DRState extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.width*1.095 ,
              left: MediaQuery.of(context).size.width *0.07,

              child:  Container(

                height: 205,
                width: 316,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(
                      15),
                  color:   Color(0xffffffff).withOpacity(0.5),
                ),),),
            Positioned(
              top: MediaQuery.of(context).size.width*1.0995 ,
              left: MediaQuery.of(context).size.width *0.08,

              child:  Container(

                height: 199,
                width: 310,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(
                      15),
                  color:   Color(0xff9589DE).withOpacity(0.5),
                ),),)
            ,Positioned(
              top: MediaQuery.of(context).size.width*1.16 ,
              left: MediaQuery.of(context).size.width *0.35,
              child: Container(
                width: 275,
                height: 86,
                child: Text(
                  "DR Detection",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff150B3D)),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width*1.26 ,
              left: MediaQuery.of(context).size.width *0.15,
              child: Container(
                width: 275,
                height: 43,
                child: Text(
                  "\t\t\t\t\t\t\tDon’t use this detection as\t a replacement of treatment by your DR.",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff)),
                ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.width * 1.38,
              left: MediaQuery.of(context).size.width * 0.38,
              child:   CircularPercentIndicator(
                radius: 40.0,
                lineWidth: 40.0,
                animation: true,
                percent: 1,
                center: GestureDetector(
                  child:  Text(
                    'Ready',style: TextStyle(fontSize:16,color: Color(0xffffffff),),

                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>user2()));
                  },
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Color(0x200E32).withOpacity(1),
              ),),
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
    );
  }
}
