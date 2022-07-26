import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appkk/Screens/Screen4.dart';
import 'package:flutter_appkk/no_dr.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  _DRState createState() => _DRState();
}

class _DRState extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width ,
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
                "\t\t\t\t\t\tDetect Diabetic retinopathy \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tand it’s 4 stages",
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
              lineWidth: 5.0,
              animation: true,
              percent: 0.75,
              center: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Color(0x200E32).withOpacity(1),
                  radius: 25,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xffffffff),
                  ),
                ),
                onTap: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NO_DR()));

                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Screen4()));
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
          image: AssetImage('assets/images/eye.png',),
        ),
      ),
    ),);
  }
}
