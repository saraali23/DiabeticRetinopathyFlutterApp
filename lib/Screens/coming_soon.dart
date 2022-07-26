import 'package:flutter/material.dart';
import 'package:flutter_appkk/Screens/user2.dart';

class coming_soon extends StatefulWidget {
  const coming_soon({Key? key}) : super(key: key);

  @override
  _coming_soonState createState() => _coming_soonState();
}

class _coming_soonState extends State<coming_soon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9F6ABA).withOpacity(1),
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
          top: MediaQuery.of(context).size.width * 0.4,
          left: MediaQuery.of(context).size.width * 0.03,
          child: Container(
              height: MediaQuery.of(context).size.width*0.8,
              width: MediaQuery.of(context).size.width ,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                image: new AssetImage("assets/images/Group.png"),
                fit: BoxFit.fill,
              ))),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
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
