import 'package:flutter/material.dart';
import 'package:flutter_appkk/Screens/user.dart';

import 'coming_soon.dart';

class user2 extends StatefulWidget {
  const user2({Key? key}) : super(key: key);

  @override
  _user2State createState() => _user2State();
}

class _user2State extends State<user2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
          top: MediaQuery.of(context).size.width * 0.7,
          left: MediaQuery.of(context).size.width *0.005,
          child: GestureDetector(child: Container(
            height: 160,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffF4F3FC).withOpacity(1),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.width * 0.06,
                  left: MediaQuery.of(context).size.width * 0.14,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.health_and_safety_sharp,
                      size: 30,
                      color: Color(0xff9589DE).withOpacity(1),
                    ),
                    radius: 30,
                    backgroundColor: Color(0xffffffff).withOpacity(1),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.width * 0.3,
                  left: MediaQuery.of(context).size.width * 0.14,
                  child: Text(
                    '140 Tips',
                    style: TextStyle(
                        color: Color(0xffAAA6B9),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.width * 0.23,
                  left: MediaQuery.of(context).size.width * 0.14,
                  child: Text(
                    'Healthy Tips',
                    style: TextStyle(
                        color: Color(0xff150B3D),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),   onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>coming_soon()));},
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.width * 0.7,
          left: MediaQuery.of(context).size.width * 0.53,
          child: GestureDetector(
            child: Container(
              height: 160,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff9589DE).withOpacity(1),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.06,
                    left: MediaQuery.of(context).size.width * 0.14,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.settings_overscan,
                        size: 30,
                        color: Color(0xff9589DE).withOpacity(1),
                      ),
                      radius: 30,
                      backgroundColor: Color(0xffffffff),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.3,
                    left: MediaQuery.of(context).size.width * 0.1,
                    child: Text(
                      'using oct images',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.23,
                    left: MediaQuery.of(context).size.width * 0.14,
                    child: Text(
                      'DR Scan',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => user()));
            },
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.width * 1.3,
          left: MediaQuery.of(context).size.width * 0.005,
          child: GestureDetector(
            child: Container(
              height: 160,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffF4F3FC).withOpacity(1),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.06,
                    left: MediaQuery.of(context).size.width * 0.13,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.my_library_books,
                        size: 30,
                        color: Color(0xff9589DE).withOpacity(1),
                      ),
                      radius: 30,
                      backgroundColor: Color(0xffffffff),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.3,
                    left: MediaQuery.of(context).size.width * 0.155,
                    child: Text(
                      '120 Blog',
                      style: TextStyle(
                          color: Color(0xffAAA6B9),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.23,
                    left: MediaQuery.of(context).size.width * 0.155,
                    child: Text(
                      'Blog',
                      style: TextStyle(
                          color: Color(0xff150B3D),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => coming_soon()));
            },
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.width * 1.3,
          left: MediaQuery.of(context).size.width * 0.53,
          child: GestureDetector(
            child: Container(
              height: 160,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffF4F3FC).withOpacity(1),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.06,
                    left: MediaQuery.of(context).size.width * 0.14,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person_add_alt_1_sharp,
                        size: 30,
                        color: Color(0xff9589DE).withOpacity(1),
                      ),
                      radius: 30,
                      backgroundColor: Color(0xffffffff),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.3,
                    left: MediaQuery.of(context).size.width * 0.14,
                    child: Text(
                      '85 Doctors',
                      style: TextStyle(
                          color: Color(0xffAAA6B9),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width * 0.23,
                    left: MediaQuery.of(context).size.width * 0.14,
                    child: Text(
                      'Eye Doctors',
                      style: TextStyle(
                          color: Color(0xff150B3D),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => coming_soon()));
            },
          ),
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
