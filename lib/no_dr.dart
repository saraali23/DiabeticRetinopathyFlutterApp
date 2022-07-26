import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appkk/no_dr.dart';

import 'Screens/coming_soon.dart';
import 'Screens/user.dart';

class NO_DR extends StatefulWidget {
  const NO_DR({Key? key}) : super(key: key);

  @override
  _DRState createState() => _DRState();
}

class _DRState extends State<NO_DR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width ,
      child: Stack(
        children: [
          Positioned(

            top: MediaQuery.of(context).size.width*0.09 ,
            left: MediaQuery.of(context).size.width *0.03,
            child:
            GestureDetector(child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: Icon(Icons.arrow_back,color: Color(0xff9589DE),),          ) ,onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> user()));
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NO_DR()));
            },)
            ,),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.25,
            left: MediaQuery.of(context).size.width * 0.17,
            child: Container(
              width: 275,
              height: 86,
              child: Text(
                "we are sorry to inform you that you may have DR but don't worry it’s not fatal ,you need to contact your doctor ASAP",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff150B3D)),
              ),
            ),
          ),
          SizedBox(width: 10),
          Positioned(
            top: MediaQuery.of(context).size.width *1.5,
            left: MediaQuery.of(context).size.width * 0.22,
            child: Container(

              width: MediaQuery.of(context).size.width * .6,
              height: MediaQuery.of(context).size.width * .09,
              child: ElevatedButton(
                child: Text("Nearby Doctors Tips".toUpperCase(),
                    style: TextStyle(fontSize: 14)),
                style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff9589DE)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Color(0xff9589DE))))),
                onPressed: () { Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => coming_soon()));}



                ),),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF5F6FA),
        image: new DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.9), BlendMode.dstATop),
          image: AssetImage('assets/images/DR.png',),
        ),
      ),
    ),);
  }
}
